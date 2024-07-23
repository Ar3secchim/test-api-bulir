-- AlterTable
ALTER TABLE "provider_services" ALTER COLUMN "type_account" SET DEFAULT 'SERVICE_PROVIDER';

-- AlterTable
ALTER TABLE "users" ALTER COLUMN "type_account" SET DEFAULT 'CLIENT';
