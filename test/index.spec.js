import request from "supertest";
import server from "../src/server";

describe("GET /cities", () => {
  it("should respond with 200 OK", async () => {
    const res = await request(server).get("/cities");
    expect(res.status).toBe(200);
  });
});
