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
DECLARE @cpty_3 VarChar(3) -- String
SET     @cpty_3 = '%C%'
DECLARE @cpty_4 VarChar(3) -- String
SET     @cpty_4 = '%C%'
DECLARE @cpty_5 VarChar(3) -- String
SET     @cpty_5 = '%C%'

SELECT
	"al_1"."alert",
	"al_1"."alert_1",
	"al_1"."alert_2"
FROM
	(
		SELECT
			"al"."AlertKey" as "alert",
			"al"."AlertCode" as "alert_1",
			"al"."CreationDate" as "alert_2"
		FROM
			"Alert" "al"
				LEFT JOIN "AuditAlert" "au1" ON ("au1"."AlertKey" = "al"."AlertKey" OR "au1"."AlertKey" IS NULL AND "al"."AlertKey" IS NULL) AND ("au1"."AlertCode" = "au1"."AlertCode" OR "au1"."AlertCode" IS NULL AND "au1"."AlertCode" IS NULL)
		GROUP BY
			"al"."AlertKey",
			"al"."AlertCode",
			"al"."CreationDate"
	) "al_1"
		LEFT JOIN "Trade" "trade1" ON ("al_1"."alert" = RTrim(Char("trade1"."DealId")) OR "al_1"."alert" IS NULL AND RTrim(Char("trade1"."DealId")) IS NULL)
		LEFT JOIN "Nomin" "nomin1" ON ("al_1"."alert" = RTrim(Char("nomin1"."CargoId")) OR "al_1"."alert" IS NULL AND RTrim(Char("nomin1"."CargoId")) IS NULL)
WHERE
	(("nomin1"."DeliveryCounterParty" LIKE @cpty_3 ESCAPE '~' OR "trade1"."CounterParty" LIKE @cpty_4 ESCAPE '~') OR "al_1"."alert_1" LIKE @cpty_5 ESCAPE '~')
GROUP BY
	"al_1"."alert",
	"al_1"."alert_1",
	"al_1"."alert_2"

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

