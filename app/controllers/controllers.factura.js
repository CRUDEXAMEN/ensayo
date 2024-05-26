import { pool } from "../config/db.mysql.js";

export const mostrarFactura = async(req, res) =>{
    let id = req.params['id'];
    try {
        const respuesta = await pool.query(`CALL sp_MostrarFactura(${id});`);
        res.json({"res":respuesta})
    } catch (err) {
        res.json({"error":err})
    }
}

export const listarFactura = async(req, res) =>{
    try {
        const respuesta = await pool.query(`CALL sp_ListarFactura();`);
        res.json({"res":respuesta})
    } catch (err) {
        res.json({"error":err})
    }
}

export const crearFactura = async(req, res) =>{
    let nombre = req.body.nombre;
    let total = req.body.total;
    try {
        const respuesta = await pool.query(`CALL sp_CrearFactura('${nombre}','${total}'); `);
        if (respuesta[0].affectedRows==1) {
            res.json({"res":"Factura creada correctamente"})
        } else {
            res.json({"err":"No se puede crear su factura"});
        }
    } catch (err) {
        res.json({"error":err})
    }
}

export const modificarFactura = async(req, res) =>{
    let id = req.body.id;
    let nombre = req.body.nombre;
    let total = req.body.total;
    try {
        const respuesta = await pool.query(`CALL sp_ModificarFactura(${id}, '${nombre}','${total}'); `);
        if (respuesta[0].affectedRows==1) {
            res.json({"res":"Factura modificada correctamente"})
        } else {
            res.json({"err":"No se puede modificar su factura"});
        }
    } catch (err) {
        res.json({"error":err})
    }
}

export const eliminarFactura = async(req, res) =>{
    let id = req.body.id;
    try {
        const respuesta = await pool.query(`CALL sp_EliminarFactura	(${id}); `);
        if (respuesta[0].affectedRows==1) {
            res.json({"res":"Factura elimanada correctamente"})
        } else {
            res.json({"err":"No se puede eliminar su factura"});
        }
    } catch (err) {
        res.json({"error":err})
    }
}