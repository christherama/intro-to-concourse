import express from "express";

const server = express();

server.get("/cities", async (req, res) => {
  return res.send(["chicago", "baltimore", "toronto", "phoenix"]);
});

export default server;
