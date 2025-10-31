BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @cond Text(3) -- String
SET     @cond = '%C%'

SELECT
	al_group_3."AlertKey",
	al_group_3."AlertCode",
	t2."LastUpdate",
	t2.cond,
	t2."DeliveryId",
	t2."DeliveryCounterParty",
	t2.cond_1,
	t2."ParcelId",
	t2."CounterParty"
FROM
	(
		SELECT
			al_group_1."AlertKey",
			al_group_1."AlertCode",
			al_group_1."CreationDate"
		FROM
			(
				SELECT
					al_group."AlertCode",
					al_group."AlertKey",
					al_group."CreationDate"
				FROM
					"Alert" al_group
						LEFT JOIN "AuditAlert" au ON au."AlertKey" = al_group."AlertKey"
				GROUP BY
					al_group."AlertKey",
					al_group."AlertCode",
					al_group."CreationDate"
			) al_group_1
				LEFT JOIN "Trade" trade_1 ON al_group_1."AlertKey" = trade_1."DealId"::text
				LEFT JOIN "Nomin" nomin_1 ON al_group_1."AlertKey" = nomin_1."CargoId"::text
		WHERE
			nomin_1."DeliveryCounterParty" LIKE :cond OR trade_1."CounterParty" LIKE :cond OR
			al_group_1."AlertCode" LIKE :cond
		GROUP BY
			al_group_1."AlertKey",
			al_group_1."AlertCode",
			al_group_1."CreationDate"
	) al_group_3
		LEFT JOIN LATERAL (
			SELECT
				nomin_2."CargoId" as cond,
				nomin_2."DeliveryId",
				nomin_2."DeliveryCounterParty",
				trade_2."DealId" as cond_1,
				trade_2."ParcelId",
				trade_2."CounterParty",
				t1."LastUpdate"
			FROM
				(
					SELECT
						al_group_2."AlertCode",
						al_group_2."AlertKey",
						al_group_2."CreationDate",
						Coalesce(MAX(au_1."TransactionDate"), al_group_2."CreationDate") as "LastUpdate"
					FROM
						"Alert" al_group_2
							LEFT JOIN "AuditAlert" au_1 ON au_1."AlertKey" = al_group_2."AlertKey"
					GROUP BY
						al_group_2."AlertKey",
						al_group_2."AlertCode",
						al_group_2."CreationDate"
				) t1
					LEFT JOIN "Trade" trade_2 ON t1."AlertKey" = trade_2."DealId"::text
					LEFT JOIN "Nomin" nomin_2 ON t1."AlertKey" = nomin_2."CargoId"::text
			WHERE
				(nomin_2."DeliveryCounterParty" LIKE :cond OR trade_2."CounterParty" LIKE :cond OR t1."AlertCode" LIKE :cond) AND
				al_group_3."AlertKey" = t1."AlertKey" AND
				al_group_3."AlertCode" = t1."AlertCode" AND
				al_group_3."CreationDate" = t1."CreationDate"
			LIMIT 1
		) t2 ON 1=1

