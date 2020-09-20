BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Alert"
(
	"AlertKey"     VarChar(255) CHARACTER SET UNICODE_FSS,
	"AlertCode"    VarChar(255) CHARACTER SET UNICODE_FSS,
	"CreationDate" TimeStamp
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "AuditAlert"
(
	"CreationDate"    TimeStamp,
	"AlertCode"       VarChar(255) CHARACTER SET UNICODE_FSS,
	"AlertKey"        VarChar(255) CHARACTER SET UNICODE_FSS,
	"TransactionDate" TimeStamp
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Trade"
(
	"DealId"       Int                                    NOT NULL,
	"ParcelId"     Int                                    NOT NULL,
	"CounterParty" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Nomin"
(
	"CargoId"              Int                                    NOT NULL,
	"DeliveryId"           Int                                    NOT NULL,
	"DeliveryCounterParty" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Flat"
(
	"AlertKey"             VarChar(255) CHARACTER SET UNICODE_FSS,
	"AlertCode"            VarChar(255) CHARACTER SET UNICODE_FSS,
	"CargoId"              Int,
	"DeliveryId"           Int,
	"DeliveryCounterParty" VarChar(255) CHARACTER SET UNICODE_FSS,
	"DealId"               Int,
	"ParcelId"             Int,
	"CounterParty"         VarChar(255) CHARACTER SET UNICODE_FSS,
	"TransactionDate"      TimeStamp
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @p1 VarChar(3) -- String
SET     @p1 = '%C%'
DECLARE @p2 VarChar(3) -- String
SET     @p2 = '%C%'
DECLARE @p3 VarChar(3) -- String
SET     @p3 = '%C%'

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
				LEFT JOIN "AuditAlert" "au1" ON ("au1"."AlertKey" IS NULL AND "al"."AlertKey" IS NULL OR "au1"."AlertKey" = "al"."AlertKey") AND ("au1"."AlertCode" IS NULL AND "au1"."AlertCode" IS NULL OR "au1"."AlertCode" = "au1"."AlertCode")
		GROUP BY
			"al"."AlertKey",
			"al"."AlertCode",
			"al"."CreationDate"
	) "al_1"
		LEFT JOIN "Trade" "trade1" ON "al_1"."alert" = Cast("trade1"."DealId" as VarChar(11) CHARACTER SET UNICODE_FSS)
		LEFT JOIN "Nomin" "nomin1" ON "al_1"."alert" = Cast("nomin1"."CargoId" as VarChar(11) CHARACTER SET UNICODE_FSS)
WHERE
	(("nomin1"."DeliveryCounterParty" LIKE @p1 OR "trade1"."CounterParty" LIKE @p2) OR "al_1"."alert_1" LIKE @p3)
GROUP BY
	"al_1"."alert",
	"al_1"."alert_1",
	"al_1"."alert_2"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Flat"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Nomin"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Trade"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "AuditAlert"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Alert"

