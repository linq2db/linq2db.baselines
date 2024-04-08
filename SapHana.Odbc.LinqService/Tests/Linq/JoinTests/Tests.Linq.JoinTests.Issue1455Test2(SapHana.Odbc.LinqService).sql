BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Alert"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Alert"
(
	"AlertKey"     NVarChar(255) NOT NULL,
	"AlertCode"    NVarChar(255) NOT NULL,
	"CreationDate" Timestamp     NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "AuditAlert"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "AuditAlert"
(
	"AlertKey"        NVarChar(255) NOT NULL,
	"AlertCode"       NVarChar(255) NOT NULL,
	"CreationDate"    Timestamp     NOT NULL,
	"TransactionDate" Timestamp         NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Trade"

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

DROP TABLE "Nomin"

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

DROP TABLE "Flat"

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
DECLARE @DeliveryCounterParty NVarChar(3) -- String
SET     @DeliveryCounterParty = '%C%'
DECLARE @DeliveryCounterParty NVarChar(3) -- String
SET     @DeliveryCounterParty = '%C%'
DECLARE @DeliveryCounterParty NVarChar(3) -- String
SET     @DeliveryCounterParty = '%C%'
DECLARE @DeliveryCounterParty NVarChar(3) -- String
SET     @DeliveryCounterParty = '%C%'
DECLARE @DeliveryCounterParty NVarChar(3) -- String
SET     @DeliveryCounterParty = '%C%'
DECLARE @DeliveryCounterParty NVarChar(3) -- String
SET     @DeliveryCounterParty = '%C%'

SELECT
	"al_group_3"."AlertKey",
	"al_group_3"."AlertCode",
	"t2"."LastUpdate_1",
	"t2"."CargoId",
	"t2"."DeliveryId",
	"t2"."DeliveryCounterParty",
	"t2"."DealId",
	"t2"."ParcelId",
	"t2"."CounterParty",
	"t2"."LastUpdate"
FROM
	(
		SELECT
			"al_group_1"."AlertKey",
			"al_group_1"."AlertCode",
			"al_group_1"."CreationDate"
		FROM
			(
				SELECT
					"al_group"."AlertKey",
					"al_group"."AlertCode",
					"al_group"."CreationDate"
				FROM
					"Alert" "al_group"
						LEFT JOIN "AuditAlert" "au" ON "au"."AlertKey" = "al_group"."AlertKey" AND "au"."AlertCode" = "au"."AlertCode"
				GROUP BY
					"al_group"."AlertKey",
					"al_group"."AlertCode",
					"al_group"."CreationDate"
			) "al_group_1"
				LEFT JOIN (
					SELECT
						"trade_1"."CounterParty",
						CAST("trade_1"."DealId" AS NVarChar(11)) as "c1"
					FROM
						"Trade" "trade_1"
				) "trade_2" ON "al_group_1"."AlertKey" = "trade_2"."c1"
				LEFT JOIN (
					SELECT
						"nomin_1"."DeliveryCounterParty",
						CAST("nomin_1"."CargoId" AS NVarChar(11)) as "c1"
					FROM
						"Nomin" "nomin_1"
				) "nomin_2" ON "al_group_1"."AlertKey" = "nomin_2"."c1"
		WHERE
			("nomin_2"."DeliveryCounterParty" LIKE ? OR "trade_2"."CounterParty" LIKE ? OR "al_group_1"."AlertCode" LIKE ?)
		GROUP BY
			"al_group_1"."AlertKey",
			"al_group_1"."AlertCode",
			"al_group_1"."CreationDate"
	) "al_group_3"
		LEFT JOIN (
			SELECT
				"nomin_4"."CargoId",
				"nomin_4"."DeliveryId",
				"nomin_4"."DeliveryCounterParty",
				"trade_4"."DealId",
				"trade_4"."ParcelId",
				"trade_4"."CounterParty",
				Coalesce("t1"."MAX_1", "t1"."CreationDate") as "LastUpdate",
				Coalesce("t1"."MAX_1", "t1"."CreationDate") as "LastUpdate_1",
				ROW_NUMBER() OVER (PARTITION BY "t1"."AlertKey", "t1"."AlertCode", "t1"."CreationDate" ORDER BY "t1"."AlertKey") as "rn",
				"t1"."AlertKey",
				"t1"."AlertCode",
				"t1"."CreationDate"
			FROM
				(
					SELECT
						"al_group_2"."AlertKey",
						"al_group_2"."AlertCode",
						"al_group_2"."CreationDate",
						MAX("au_1"."TransactionDate") as "MAX_1"
					FROM
						"Alert" "al_group_2"
							LEFT JOIN "AuditAlert" "au_1" ON "au_1"."AlertKey" = "al_group_2"."AlertKey" AND "au_1"."AlertCode" = "au_1"."AlertCode"
					GROUP BY
						"al_group_2"."AlertKey",
						"al_group_2"."AlertCode",
						"al_group_2"."CreationDate"
				) "t1"
					LEFT JOIN (
						SELECT
							"trade_3"."CounterParty",
							"trade_3"."DealId",
							"trade_3"."ParcelId",
							CAST("trade_3"."DealId" AS NVarChar(11)) as "c1"
						FROM
							"Trade" "trade_3"
					) "trade_4" ON "t1"."AlertKey" = "trade_4"."c1"
					LEFT JOIN (
						SELECT
							"nomin_3"."DeliveryCounterParty",
							"nomin_3"."CargoId",
							"nomin_3"."DeliveryId",
							CAST("nomin_3"."CargoId" AS NVarChar(11)) as "c1"
						FROM
							"Nomin" "nomin_3"
					) "nomin_4" ON "t1"."AlertKey" = "nomin_4"."c1"
			WHERE
				("nomin_4"."DeliveryCounterParty" LIKE ? OR "trade_4"."CounterParty" LIKE ? OR "t1"."AlertCode" LIKE ?)
		) "t2" ON "al_group_3"."AlertKey" = "t2"."AlertKey" AND "al_group_3"."AlertCode" = "t2"."AlertCode" AND "al_group_3"."CreationDate" = "t2"."CreationDate" AND "t2"."rn" <= 1

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

