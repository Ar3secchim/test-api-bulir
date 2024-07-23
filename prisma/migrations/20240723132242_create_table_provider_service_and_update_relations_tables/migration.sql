/*
  Warnings:

  - Added the required column `provider_service` to the `service_contracts` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "services" DROP CONSTRAINT "services_user_id_fkey";

-- AlterTable
ALTER TABLE "service_contracts" ADD COLUMN     "provider_service" UUID NOT NULL;

-- CreateTable
CREATE TABLE "provider_services" (
    "id" UUID NOT NULL,
    "nif" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "type_account" "user_account_type" NOT NULL,

    CONSTRAINT "provider_services_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "provider_services_nif_key" ON "provider_services"("nif");

-- CreateIndex
CREATE UNIQUE INDEX "provider_services_email_key" ON "provider_services"("email");

-- AddForeignKey
ALTER TABLE "services" ADD CONSTRAINT "services_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "provider_services"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "service_contracts" ADD CONSTRAINT "service_contracts_provider_service_fkey" FOREIGN KEY ("provider_service") REFERENCES "provider_services"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
