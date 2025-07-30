BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @cond VarChar(3) -- String
SET     @cond = '%C%'

SELECT
	"al_group_2"."AlertKey",
	"al_group_2"."AlertCode",
	(
		SELECT FIRST 1
			Coalesce("t1".MAX_1, "t1"."CreationDate")
		FROM
			(
				SELECT
					"al_group_3"."AlertCode",
					"al_group_3"."AlertKey",
					"al_group_3"."CreationDate",
					MAX("au_1"."TransactionDate") as MAX_1
				FROM
					"Alert" "al_group_3"
						LEFT JOIN "AuditAlert" "au_1" ON "au_1"."AlertKey" = "al_group_3"."AlertKey"
				GROUP BY
					"al_group_3"."AlertKey",
					"al_group_3"."AlertCode",
					"al_group_3"."CreationDate"
			) "t1"
				LEFT JOIN "Trade" "trade_2" ON "t1"."AlertKey" = "trade_2"."DealId"
				LEFT JOIN "Nomin" "nomin_2" ON "t1"."AlertKey" = "nomin_2"."CargoId"
		WHERE
			("nomin_2"."DeliveryCounterParty" LIKE @cond OR "trade_2"."CounterParty" LIKE @cond OR "t1"."AlertCode" LIKE @cond) AND
			"al_group_2"."AlertKey" = "t1"."AlertKey" AND
			"al_group_2"."AlertCode" = "t1"."AlertCode" AND
			"al_group_2"."CreationDate" = "t1"."CreationDate"
	),
	(
		SELECT FIRST 1
			"nomin_3"."CargoId"
		FROM
			(
				SELECT
					"al_group_4"."AlertCode",
					"al_group_4"."AlertKey",
					"al_group_4"."CreationDate",
					MAX("au_2"."TransactionDate") as MAX_1
				FROM
					"Alert" "al_group_4"
						LEFT JOIN "AuditAlert" "au_2" ON "au_2"."AlertKey" = "al_group_4"."AlertKey"
				GROUP BY
					"al_group_4"."AlertKey",
					"al_group_4"."AlertCode",
					"al_group_4"."CreationDate"
			) "t2"
				LEFT JOIN "Trade" "trade_3" ON "t2"."AlertKey" = "trade_3"."DealId"
				LEFT JOIN "Nomin" "nomin_3" ON "t2"."AlertKey" = "nomin_3"."CargoId"
		WHERE
			("nomin_3"."DeliveryCounterParty" LIKE @cond OR "trade_3"."CounterParty" LIKE @cond OR "t2"."AlertCode" LIKE @cond) AND
			"al_group_2"."AlertKey" = "t2"."AlertKey" AND
			"al_group_2"."AlertCode" = "t2"."AlertCode" AND
			"al_group_2"."CreationDate" = "t2"."CreationDate"
	),
	(
		SELECT FIRST 1
			"nomin_4"."DeliveryId"
		FROM
			(
				SELECT
					"al_group_5"."AlertCode",
					"al_group_5"."AlertKey",
					"al_group_5"."CreationDate",
					MAX("au_3"."TransactionDate") as MAX_1
				FROM
					"Alert" "al_group_5"
						LEFT JOIN "AuditAlert" "au_3" ON "au_3"."AlertKey" = "al_group_5"."AlertKey"
				GROUP BY
					"al_group_5"."AlertKey",
					"al_group_5"."AlertCode",
					"al_group_5"."CreationDate"
			) "t3"
				LEFT JOIN "Trade" "trade_4" ON "t3"."AlertKey" = "trade_4"."DealId"
				LEFT JOIN "Nomin" "nomin_4" ON "t3"."AlertKey" = "nomin_4"."CargoId"
		WHERE
			("nomin_4"."DeliveryCounterParty" LIKE @cond OR "trade_4"."CounterParty" LIKE @cond OR "t3"."AlertCode" LIKE @cond) AND
			"al_group_2"."AlertKey" = "t3"."AlertKey" AND
			"al_group_2"."AlertCode" = "t3"."AlertCode" AND
			"al_group_2"."CreationDate" = "t3"."CreationDate"
	),
	(
		SELECT FIRST 1
			"nomin_5"."DeliveryCounterParty"
		FROM
			(
				SELECT
					"al_group_6"."AlertCode",
					"al_group_6"."AlertKey",
					"al_group_6"."CreationDate",
					MAX("au_4"."TransactionDate") as MAX_1
				FROM
					"Alert" "al_group_6"
						LEFT JOIN "AuditAlert" "au_4" ON "au_4"."AlertKey" = "al_group_6"."AlertKey"
				GROUP BY
					"al_group_6"."AlertKey",
					"al_group_6"."AlertCode",
					"al_group_6"."CreationDate"
			) "t4"
				LEFT JOIN "Trade" "trade_5" ON "t4"."AlertKey" = "trade_5"."DealId"
				LEFT JOIN "Nomin" "nomin_5" ON "t4"."AlertKey" = "nomin_5"."CargoId"
		WHERE
			("nomin_5"."DeliveryCounterParty" LIKE @cond OR "trade_5"."CounterParty" LIKE @cond OR "t4"."AlertCode" LIKE @cond) AND
			"al_group_2"."AlertKey" = "t4"."AlertKey" AND
			"al_group_2"."AlertCode" = "t4"."AlertCode" AND
			"al_group_2"."CreationDate" = "t4"."CreationDate"
	),
	(
		SELECT FIRST 1
			"trade_6"."DealId"
		FROM
			(
				SELECT
					"al_group_7"."AlertCode",
					"al_group_7"."AlertKey",
					"al_group_7"."CreationDate",
					MAX("au_5"."TransactionDate") as MAX_1
				FROM
					"Alert" "al_group_7"
						LEFT JOIN "AuditAlert" "au_5" ON "au_5"."AlertKey" = "al_group_7"."AlertKey"
				GROUP BY
					"al_group_7"."AlertKey",
					"al_group_7"."AlertCode",
					"al_group_7"."CreationDate"
			) "t5"
				LEFT JOIN "Trade" "trade_6" ON "t5"."AlertKey" = "trade_6"."DealId"
				LEFT JOIN "Nomin" "nomin_6" ON "t5"."AlertKey" = "nomin_6"."CargoId"
		WHERE
			("nomin_6"."DeliveryCounterParty" LIKE @cond OR "trade_6"."CounterParty" LIKE @cond OR "t5"."AlertCode" LIKE @cond) AND
			"al_group_2"."AlertKey" = "t5"."AlertKey" AND
			"al_group_2"."AlertCode" = "t5"."AlertCode" AND
			"al_group_2"."CreationDate" = "t5"."CreationDate"
	),
	(
		SELECT FIRST 1
			"trade_7"."ParcelId"
		FROM
			(
				SELECT
					"al_group_8"."AlertCode",
					"al_group_8"."AlertKey",
					"al_group_8"."CreationDate",
					MAX("au_6"."TransactionDate") as MAX_1
				FROM
					"Alert" "al_group_8"
						LEFT JOIN "AuditAlert" "au_6" ON "au_6"."AlertKey" = "al_group_8"."AlertKey"
				GROUP BY
					"al_group_8"."AlertKey",
					"al_group_8"."AlertCode",
					"al_group_8"."CreationDate"
			) "t6"
				LEFT JOIN "Trade" "trade_7" ON "t6"."AlertKey" = "trade_7"."DealId"
				LEFT JOIN "Nomin" "nomin_7" ON "t6"."AlertKey" = "nomin_7"."CargoId"
		WHERE
			("nomin_7"."DeliveryCounterParty" LIKE @cond OR "trade_7"."CounterParty" LIKE @cond OR "t6"."AlertCode" LIKE @cond) AND
			"al_group_2"."AlertKey" = "t6"."AlertKey" AND
			"al_group_2"."AlertCode" = "t6"."AlertCode" AND
			"al_group_2"."CreationDate" = "t6"."CreationDate"
	),
	(
		SELECT FIRST 1
			"trade_8"."CounterParty"
		FROM
			(
				SELECT
					"al_group_9"."AlertCode",
					"al_group_9"."AlertKey",
					"al_group_9"."CreationDate",
					MAX("au_7"."TransactionDate") as MAX_1
				FROM
					"Alert" "al_group_9"
						LEFT JOIN "AuditAlert" "au_7" ON "au_7"."AlertKey" = "al_group_9"."AlertKey"
				GROUP BY
					"al_group_9"."AlertKey",
					"al_group_9"."AlertCode",
					"al_group_9"."CreationDate"
			) "t7"
				LEFT JOIN "Trade" "trade_8" ON "t7"."AlertKey" = "trade_8"."DealId"
				LEFT JOIN "Nomin" "nomin_8" ON "t7"."AlertKey" = "nomin_8"."CargoId"
		WHERE
			("nomin_8"."DeliveryCounterParty" LIKE @cond OR "trade_8"."CounterParty" LIKE @cond OR "t7"."AlertCode" LIKE @cond) AND
			"al_group_2"."AlertKey" = "t7"."AlertKey" AND
			"al_group_2"."AlertCode" = "t7"."AlertCode" AND
			"al_group_2"."CreationDate" = "t7"."CreationDate"
	)
FROM
	(
		SELECT
			"al_group_1"."AlertKey",
			"al_group_1"."AlertCode",
			"al_group_1"."CreationDate"
		FROM
			(
				SELECT
					"al_group"."AlertCode",
					"al_group"."AlertKey",
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
			"nomin_1"."DeliveryCounterParty" LIKE @cond OR "trade_1"."CounterParty" LIKE @cond OR
			"al_group_1"."AlertCode" LIKE @cond
		GROUP BY
			"al_group_1"."AlertKey",
			"al_group_1"."AlertCode",
			"al_group_1"."CreationDate"
	) "al_group_2"

