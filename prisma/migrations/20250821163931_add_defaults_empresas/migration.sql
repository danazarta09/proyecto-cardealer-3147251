/*
  Warnings:

  - You are about to alter the column `phone` on the `conductores` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.
  - You are about to alter the column `licenseNumber` on the `conductores` table. The data in that column could be lost. The data in that column will be cast from `VarChar(191)` to `Int`.

*/
-- AlterTable
ALTER TABLE `conductores` MODIFY `phone` INTEGER NOT NULL,
    MODIFY `licenseNumber` INTEGER NOT NULL;
