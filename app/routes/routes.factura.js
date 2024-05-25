import { Router } from "express";
import { crearFactura, eliminarFactura, listarFactura, modificarFactura, mostrarFactura } from "../controllers/controllers.factura.js";

const rutaFactura = Router();

rutaFactura.get("/factura/id", mostrarFactura);
rutaFactura.get("/factura", listarFactura);
rutaFactura.put("/factura", crearFactura);
rutaFactura.post("/factura", modificarFactura);
rutaFactura.delete("/factura", eliminarFactura);

export default rutaFactura;
