﻿BeforeExecute
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
				LEFT JOIN "Trade" "trade_1" ON "al_group_1"."AlertKey" = CAST("trade_1"."DealId" AS NVarChar(11))
				LEFT JOIN "Nomin" "nomin_1" ON "al_group_1"."AlertKey" = CAST("nomin_1"."CargoId" AS NVarChar(11))
		WHERE
			("nomin_1"."DeliveryCounterParty" LIKE '%C%' ESCAPE '~' OR "trade_1"."CounterParty" LIKE '%C%' ESCAPE '~' OR "al_group_1"."AlertCode" LIKE '%C%' ESCAPE '~')
		GROUP BY
			"al_group_1"."AlertKey",
			"al_group_1"."AlertCode",
			"al_group_1"."CreationDate"
	) "al_group_3"
		LEFT JOIN LATERAL (
			SELECT
				"nomin_2"."CargoId",
				"nomin_2"."DeliveryId",
				"nomin_2"."DeliveryCounterParty",
				"trade_2"."DealId",
				"trade_2"."ParcelId",
				"trade_2"."CounterParty",
				Coalesce("t1"."MAX_1", "t1"."CreationDate") as "LastUpdate",
				Coalesce("t1"."MAX_1", "t1"."CreationDate") as "LastUpdate_1"
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
					LEFT JOIN "Trade" "trade_2" ON "t1"."AlertKey" = CAST("trade_2"."DealId" AS NVarChar(11))
					LEFT JOIN "Nomin" "nomin_2" ON "t1"."AlertKey" = CAST("nomin_2"."CargoId" AS NVarChar(11))
			WHERE
				("nomin_2"."DeliveryCounterParty" LIKE '%C%' ESCAPE '~' OR "trade_2"."CounterParty" LIKE '%C%' ESCAPE '~' OR "t1"."AlertCode" LIKE '%C%' ESCAPE '~') AND
				"al_group_3"."AlertKey" = "t1"."AlertKey" AND
				"al_group_3"."AlertCode" = "t1"."AlertCode" AND
				"al_group_3"."CreationDate" = "t1"."CreationDate"
			LIMIT 1
		) "t2" ON 1=1

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

