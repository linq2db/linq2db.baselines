-- Firebird.3 Firebird3
DECLARE @DeliveryCounterParty VarChar(3) -- String
SET     @DeliveryCounterParty = '%C%'

SELECT
	"al_group_3"."Id",
	"t2"."LastUpdate",
	"t2"."CargoId",
	"t2"."DeliveryId",
	"t2"."DeliveryCounterParty",
	"t2"."DealId",
	"t2"."ParcelId",
	"t2"."CounterParty"
FROM
	(
		SELECT DISTINCT
			"al_group_1"."Id"
		FROM
			(
				SELECT DISTINCT
					"al_group"."AlertCode",
					"al_group"."Id",
					"al_group"."AlertKey"
				FROM
					"Alert" "al_group"
						LEFT JOIN "AuditAlert" "au" ON "au"."AlertKey" = "al_group"."AlertKey"
			) "al_group_1"
				LEFT JOIN "Trade" "trade_1" ON "al_group_1"."AlertKey" = "trade_1"."DealId"
				LEFT JOIN "Nomin" "nomin_1" ON "al_group_1"."AlertKey" = "nomin_1"."CargoId"
		WHERE
			"nomin_1"."DeliveryCounterParty" LIKE @DeliveryCounterParty OR
			"trade_1"."CounterParty" LIKE @DeliveryCounterParty OR
			"al_group_1"."AlertCode" LIKE @DeliveryCounterParty
	) "al_group_3"
		LEFT JOIN (
			SELECT
				"nomin_2"."CargoId",
				"nomin_2"."DeliveryId",
				"nomin_2"."DeliveryCounterParty",
				"trade_2"."DealId",
				"trade_2"."ParcelId",
				"trade_2"."CounterParty",
				"t1"."LastUpdate",
				ROW_NUMBER() OVER (PARTITION BY "t1"."Id" ORDER BY "t1"."Id") as "rn",
				"t1"."Id"
			FROM
				(
					SELECT
						"al_group_2"."AlertCode",
						"al_group_2"."Id",
						Coalesce(MAX("au_1"."TransactionDate"), "al_group_2"."CreationDate") as "LastUpdate",
						"al_group_2"."AlertKey"
					FROM
						"Alert" "al_group_2"
							LEFT JOIN "AuditAlert" "au_1" ON "au_1"."AlertKey" = "al_group_2"."AlertKey"
					GROUP BY
						"al_group_2"."Id",
						"al_group_2"."AlertKey",
						"al_group_2"."AlertCode",
						"al_group_2"."CreationDate"
				) "t1"
					LEFT JOIN "Trade" "trade_2" ON "t1"."AlertKey" = "trade_2"."DealId"
					LEFT JOIN "Nomin" "nomin_2" ON "t1"."AlertKey" = "nomin_2"."CargoId"
			WHERE
				"nomin_2"."DeliveryCounterParty" LIKE @DeliveryCounterParty OR
				"trade_2"."CounterParty" LIKE @DeliveryCounterParty OR
				"t1"."AlertCode" LIKE @DeliveryCounterParty
		) "t2" ON "al_group_3"."Id" = "t2"."Id" AND "t2"."rn" = 1

