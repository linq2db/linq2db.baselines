BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Alert"
(
	"AlertKey"     NVarChar(255)     NULL,
	"AlertCode"    NVarChar(255)     NULL,
	"CreationDate" timestamp         NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "AuditAlert"
(
	"CreationDate"    timestamp         NULL,
	"AlertCode"       NVarChar(255)     NULL,
	"AlertKey"        NVarChar(255)     NULL,
	"TransactionDate" timestamp         NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Trade"
(
	"DealId"       Int           NOT NULL,
	"ParcelId"     Int           NOT NULL,
	"CounterParty" NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Nomin"
(
	"CargoId"              Int           NOT NULL,
	"DeliveryId"           Int           NOT NULL,
	"DeliveryCounterParty" NVarChar(255)     NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Flat"
(
	"AlertKey"             NVarChar(255)     NULL,
	"AlertCode"            NVarChar(255)     NULL,
	"CargoId"              Int               NULL,
	"DeliveryId"           Int               NULL,
	"DeliveryCounterParty" NVarChar(255)     NULL,
	"DealId"               Int               NULL,
	"ParcelId"             Int               NULL,
	"CounterParty"         NVarChar(255)     NULL,
	"TransactionDate"      timestamp         NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Flat"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Nomin"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Trade"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "AuditAlert"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Alert"

