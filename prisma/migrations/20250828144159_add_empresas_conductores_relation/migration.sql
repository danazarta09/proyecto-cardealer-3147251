/*
  Warnings:

  - You are about to drop the column `empresa_id` on the `conductores` table. All the data in the column will be lost.
  - You are about to drop the column `licenseNumber` on the `conductores` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `conductores` table. All the data in the column will be lost.
  - You are about to drop the column `phone` on the `conductores` table. All the data in the column will be lost.
  - Added the required column `Nombre` to the `conductores` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Numero_Licencia` to the `conductores` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Telefono` to the `conductores` table without a default value. This is not possible if the table is not empty.
  - Added the required column `empresas_id` to the `conductores` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Ciudad` to the `empresas` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Direccion` to the `empresas` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Email` to the `empresas` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Localidad` to the `empresas` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Nit` to the `empresas` table without a default value. This is not possible if the table is not empty.
  - Added the required column `Telefono` to the `empresas` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `conductores` DROP FOREIGN KEY `conductores_empresa_id_fkey`;

-- DropIndex
DROP INDEX `conductores_empresa_id_fkey` ON `conductores`;

-- AlterTable
ALTER TABLE `conductores` DROP COLUMN `empresa_id`,
    DROP COLUMN `licenseNumber`,
    DROP COLUMN `name`,
    DROP COLUMN `phone`,
    ADD COLUMN `Nombre` VARCHAR(191) NOT NULL,
    ADD COLUMN `Numero_Licencia` INTEGER NOT NULL,
    ADD COLUMN `Telefono` INTEGER NOT NULL,
    ADD COLUMN `empresas_id` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `empresas` ADD COLUMN `Ciudad` VARCHAR(191) NOT NULL,
    ADD COLUMN `Direccion` VARCHAR(191) NOT NULL,
    ADD COLUMN `Email` VARCHAR(191) NOT NULL,
    ADD COLUMN `Localidad` VARCHAR(191) NOT NULL,
    ADD COLUMN `Nit` INTEGER NOT NULL,
    ADD COLUMN `Telefono` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `conductores` ADD CONSTRAINT `conductores_empresas_id_fkey` FOREIGN KEY (`empresas_id`) REFERENCES `empresas`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
