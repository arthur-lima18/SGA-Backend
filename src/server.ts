import Fastify from "fastify";
import cors from "@fastify/cors"
import { PrismaClient } from "@prisma/client"

const app = Fastify()
const prisma = new PrismaClient()

app.register(cors)

app.get('/clientes', async () => {
    const clientes = await prisma.cliente.findMany()
    return clientes
})

app.listen({
    port: 5000
}).then(() => {
    console.log('Server listening on port 5000')
})