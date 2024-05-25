import express from "express";
import ruta from "./routes/index.js";

const app = express();
app.use("/", ruta)

export default app;