/*
  Warnings:

  - You are about to alter the column `status` on the `clientes` table. The data in that column could be lost. The data in that column will be cast from `String` to `Int`.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_clientes" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "nome" TEXT NOT NULL,
    "sexo" TEXT NOT NULL,
    "dataNasc" DATETIME NOT NULL,
    "status" INTEGER NOT NULL,
    "created_at" DATETIME NOT NULL
);
INSERT INTO "new_clientes" ("created_at", "dataNasc", "id", "nome", "sexo", "status") SELECT "created_at", "dataNasc", "id", "nome", "sexo", "status" FROM "clientes";
DROP TABLE "clientes";
ALTER TABLE "new_clientes" RENAME TO "clientes";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
