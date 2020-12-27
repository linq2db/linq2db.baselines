BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Alert"
(
	"AlertKey"     NVarChar(255)     NULL,
	"AlertCode"    NVarChar(255)     NULL,
	"CreationDate" Timestamp         NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "AuditAlert"
(
	"CreationDate"    Timestamp         NULL,
	"AlertCode"       NVarChar(255)     NULL,
	"AlertKey"        NVarChar(255)     NULL,
	"TransactionDate" Timestamp         NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Trade"
(
	"DealId"       Integer       NOT NULL,
	"ParcelId"     Integer       NOT NULL,
	"CounterParty" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Nomin"
(
	"CargoId"              Integer       NOT NULL,
	"DeliveryId"           Integer       NOT NULL,
	"DeliveryCounterParty" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

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
-- SapHana.Odbc SapHanaOdbc
DECLARE @cpty_3 NVarChar(3) -- String
SET     @cpty_3 = '%C%'
DECLARE @cpty_4 NVarChar(3) -- String
SET     @cpty_4 = '%C%'
DECLARE @cpty_5 NVarChar(3) -- String
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
		LEFT JOIN "Trade" "trade1" ON "al_1"."alert" = Cast("trade1"."DealId" as NVarChar(11))
		LEFT JOIN "Nomin" "nomin1" ON "al_1"."alert" = Cast("nomin1"."CargoId" as NVarChar(11))
WHERE
	(("nomin1"."DeliveryCounterParty" LIKE ? ESCAPE '~' OR "trade1"."CounterParty" LIKE ? ESCAPE '~') OR "al_1"."alert_1" LIKE ? ESCAPE '~')
GROUP BY
	"al_1"."alert",
	"al_1"."alert_1",
	"al_1"."alert_2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Flat"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Nomin"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Trade"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "AuditAlert"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Alert"

