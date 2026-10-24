-- YDB Ydb
DECLARE $cpty Text(3) -- String
SET     $cpty = '%C%'u
DECLARE $cpty_1 Text(3) -- String
SET     $cpty_1 = '%C%'u
DECLARE $cpty_2 Text(3) -- String
SET     $cpty_2 = '%C%'u
DECLARE $cpty_3 Text(3) -- String
SET     $cpty_3 = '%C%'u
DECLARE $cpty_4 Text(3) -- String
SET     $cpty_4 = '%C%'u
DECLARE $cpty_5 Text(3) -- String
SET     $cpty_5 = '%C%'u

SELECT
	al_group_3.Id as Id,
	t3.LastUpdate as LastUpdate,
	t3.CargoId as CargoId,
	t3.DeliveryId as DeliveryId,
	t3.DeliveryCounterParty as DeliveryCounterParty,
	t3.DealId as DealId,
	t3.ParcelId as ParcelId,
	t3.CounterParty as CounterParty
FROM
	(
		SELECT DISTINCT
			al_group_1.Id as Id
		FROM
			(
				SELECT DISTINCT
					al_group.Id as Id,
					al_group.AlertKey as AlertKey,
					al_group.AlertCode as AlertCode
				FROM
					Alert al_group
						LEFT JOIN AuditAlert au ON au.AlertKey = al_group.AlertKey
			) al_group_1
				LEFT JOIN Trade trade_1 ON al_group_1.AlertKey = Unwrap(CAST(trade_1.DealId AS Text))
				LEFT JOIN Nomin nomin_1 ON al_group_1.AlertKey = Unwrap(CAST(nomin_1.CargoId AS Text))
		WHERE
			nomin_1.DeliveryCounterParty LIKE $cpty ESCAPE '~'s OR
			trade_1.CounterParty LIKE $cpty_1 ESCAPE '~'s OR al_group_1.AlertCode LIKE $cpty_2 ESCAPE '~'s
	) al_group_3
		LEFT JOIN (
			SELECT
				t2.CargoId as CargoId,
				t2.DeliveryId as DeliveryId,
				t2.DeliveryCounterParty as DeliveryCounterParty,
				t2.DealId as DealId,
				t2.ParcelId as ParcelId,
				t2.CounterParty as CounterParty,
				t2.LastUpdate as LastUpdate,
				t2.Id as Id
			FROM
				(
					SELECT
						nomin_2.CargoId as CargoId,
						nomin_2.DeliveryId as DeliveryId,
						nomin_2.DeliveryCounterParty as DeliveryCounterParty,
						trade_2.DealId as DealId,
						trade_2.ParcelId as ParcelId,
						trade_2.CounterParty as CounterParty,
						t1.LastUpdate as LastUpdate,
						ROW_NUMBER() OVER (PARTITION BY t1.Id ORDER BY t1.Id) as rn,
						t1.Id as Id
					FROM
						(
							SELECT
								al_group_2.Id as Id,
								Coalesce(MAX(au_1.TransactionDate), al_group_2.CreationDate) as LastUpdate,
								al_group_2.AlertKey as AlertKey,
								al_group_2.AlertCode as AlertCode
							FROM
								Alert al_group_2
									LEFT JOIN AuditAlert au_1 ON au_1.AlertKey = al_group_2.AlertKey
							GROUP BY
								al_group_2.Id,
								al_group_2.AlertKey,
								al_group_2.AlertCode,
								al_group_2.CreationDate
						) t1
							LEFT JOIN Trade trade_2 ON t1.AlertKey = Unwrap(CAST(trade_2.DealId AS Text))
							LEFT JOIN Nomin nomin_2 ON t1.AlertKey = Unwrap(CAST(nomin_2.CargoId AS Text))
					WHERE
						nomin_2.DeliveryCounterParty LIKE $cpty_3 ESCAPE '~'s OR
						trade_2.CounterParty LIKE $cpty_4 ESCAPE '~'s OR t1.AlertCode LIKE $cpty_5 ESCAPE '~'s
				) t2
			WHERE
				t2.rn = 1
		) t3 ON al_group_3.Id = t3.Id

