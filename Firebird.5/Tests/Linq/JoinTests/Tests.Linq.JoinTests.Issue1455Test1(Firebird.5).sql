-- Firebird.5 Firebird4
DECLARE @cpty VarChar(3) -- String
SET     @cpty = '%C%'
DECLARE @cpty_1 VarChar(3) -- String
SET     @cpty_1 = '%C%'
DECLARE @cpty_2 VarChar(3) -- String
SET     @cpty_2 = '%C%'
DECLARE @cpty_3 VarChar(3) -- String
SET     @cpty_3 = '%C%'
DECLARE @cpty_4 VarChar(3) -- String
SET     @cpty_4 = '%C%'
DECLARE @cpty_5 VarChar(3) -- String
SET     @cpty_5 = '%C%'

SELECT
	"al_group_3"."AlertKey",
	"al_group_3"."AlertCode",
	"t2"."LastUpdate",
	"t2"."cond",
	"t2"."DeliveryId",
	"t2"."DeliveryCounterParty",
	"t2"."cond_1",
	"t2"."ParcelId",
	"t2"."CounterParty"
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
						LEFT JOIN "AuditAlert" "au" ON "au"."AlertKey" = "al_group"."AlertKey"
				GROUP BY
					"al_group"."AlertKey",
					"al_group"."AlertCode",
					"al_group"."CreationDate"
			) "al_group_1"
				LEFT JOIN "Trade" "trade_1" ON "al_group_1"."AlertKey" = "trade_1"."DealId"
				LEFT JOIN "Nomin" "nomin_1" ON "al_group_1"."AlertKey" = "nomin_1"."CargoId"
		WHERE
			"nomin_1"."DeliveryCounterParty" LIKE @cpty ESCAPE '~' OR
			"trade_1"."CounterParty" LIKE @cpty_1 ESCAPE '~' OR
			"al_group_1"."AlertCode" LIKE @cpty_2 ESCAPE '~'
		GROUP BY
			"al_group_1"."AlertKey",
			"al_group_1"."AlertCode",
			"al_group_1"."CreationDate"
	) "al_group_3"
		LEFT JOIN LATERAL (
			SELECT
				"nomin_2"."CargoId" as "cond",
				"nomin_2"."DeliveryId",
				"nomin_2"."DeliveryCounterParty",
				"trade_2"."DealId" as "cond_1",
				"trade_2"."ParcelId",
				"trade_2"."CounterParty",
				Coalesce("t1".MAX_1, "t1"."CreationDate") as "LastUpdate"
			FROM
				(
					SELECT
						"al_group_2"."AlertKey",
						"al_group_2"."AlertCode",
						"al_group_2"."CreationDate",
						MAX("au_1"."TransactionDate") as MAX_1
					FROM
						"Alert" "al_group_2"
							LEFT JOIN "AuditAlert" "au_1" ON "au_1"."AlertKey" = "al_group_2"."AlertKey"
					GROUP BY
						"al_group_2"."AlertKey",
						"al_group_2"."AlertCode",
						"al_group_2"."CreationDate"
				) "t1"
					LEFT JOIN "Trade" "trade_2" ON "t1"."AlertKey" = "trade_2"."DealId"
					LEFT JOIN "Nomin" "nomin_2" ON "t1"."AlertKey" = "nomin_2"."CargoId"
			WHERE
				("nomin_2"."DeliveryCounterParty" LIKE @cpty_3 ESCAPE '~' OR "trade_2"."CounterParty" LIKE @cpty_4 ESCAPE '~' OR "t1"."AlertCode" LIKE @cpty_5 ESCAPE '~') AND
				"al_group_3"."AlertKey" = "t1"."AlertKey" AND
				"al_group_3"."AlertCode" = "t1"."AlertCode" AND
				"al_group_3"."CreationDate" = "t1"."CreationDate"
			FETCH NEXT 1 ROWS ONLY
		) "t2" ON 1=1

