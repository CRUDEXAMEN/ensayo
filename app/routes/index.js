import { Router } from "express";
import rutaFactura from "./routes.factura.js";

const ruta = Router();

ruta.use("/api", rutaFactura);

export default ruta;