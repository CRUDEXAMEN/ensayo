import { createPool } from "mysql2/promise";
import { config } from "dotenv";
config();

export const pool = createPool({
    host:process.env.MYSQL_HOST || "localhost",
    post:process.env.MYSQL_POST || 3306,
    user:process.env.MYSQL_USER || "root",
    password:process.env.MYSQL_PASSWORD || "",
    database:process.env.MYSQL_DATABASE || "examen"
})