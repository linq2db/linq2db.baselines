BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Alert"
(
	"AlertKey"     NVarChar(255)     NULL,
	"AlertCode"    NVarChar(255)     NULL,
	"CreationDate" Timestamp         NULL
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "AuditAlert"
(
	"CreationDate"    Timestamp         NULL,
	"AlertCode"       NVarChar(255)     NULL,
	"AlertKey"        NVarChar(255)     NULL,
	"TransactionDate" Timestamp         NULL
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Trade"
(
	"DealId"       Integer       NOT NULL,
	"ParcelId"     Integer       NOT NULL,
	"CounterParty" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Nomin"
(
	"CargoId"              Integer       NOT NULL,
	"DeliveryId"           Integer       NOT NULL,
	"DeliveryCounterParty" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "Flat"
(
	"AlertKey"             NVarChar(255)     NULL,
	"AlertCode"            NVarChar(255)     NULL,
	"CargoId"              Integer           NULL,
	"DeliveryId"           Integer           NULL,
	"DeliveryCounterParty" NVarChar(255)     NULL,
	"DealId"               Integer           NULL,
	"ParcelId"             Integer           NULL,
	"CounterParty"         NVarChar(255)     NULL,
	"TransactionDate"      Timestamp         NULL
)

BeforeExecute
-- SapHana.Native SapHana
DECLARE @p1 NVarChar(3) -- String
SET     @p1 = '%C%'
DECLARE @p2 NVarChar(3) -- String
SET     @p2 = '%C%'
DECLARE @p3 NVarChar(3) -- String
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
		LEFT JOIN "Trade" "trade1" ON "al_1"."alert" = Cast("trade1"."DealId" as NVarChar(11))
		LEFT JOIN "Nomin" "nomin1" ON "al_1"."alert" = Cast("nomin1"."CargoId" as NVarChar(11))
WHERE
	(("nomin1"."DeliveryCounterParty" LIKE :"p1" OR "trade1"."CounterParty" LIKE :"p2") OR "al_1"."alert_1" LIKE :"p3")
GROUP BY
	"al_1"."alert",
	"al_1"."alert_1",
	"al_1"."alert_2"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Flat"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Nomin"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Trade"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "AuditAlert"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "Alert"

