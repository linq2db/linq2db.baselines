-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'

SELECT
	[al_group_3].[AlertKey],
	[al_group_3].[AlertCode],
	[t2].[LastUpdate],
	[t2].[cond],
	[t2].[DeliveryId],
	[t2].[DeliveryCounterParty],
	[t2].[cond_1],
	[t2].[ParcelId],
	[t2].[CounterParty]
FROM
	(
		SELECT
			[al_group_1].[AlertKey],
			[al_group_1].[AlertCode],
			[al_group_1].[CreationDate]
		FROM
			(
				SELECT
					[al_group].[AlertCode],
					[al_group].[AlertKey],
					[al_group].[CreationDate]
				FROM
					[Alert] [al_group]
						LEFT JOIN [AuditAlert] [au] ON [au].[AlertKey] = [al_group].[AlertKey]
				GROUP BY
					[al_group].[AlertKey],
					[al_group].[AlertCode],
					[al_group].[CreationDate]
			) [al_group_1]
				LEFT JOIN [Trade] [trade_1] ON [al_group_1].[AlertKey] = CAST([trade_1].[DealId] AS NVarChar(11))
				LEFT JOIN [Nomin] [nomin_1] ON [al_group_1].[AlertKey] = CAST([nomin_1].[CargoId] AS NVarChar(11))
		WHERE
			[nomin_1].[DeliveryCounterParty] LIKE @cond OR [trade_1].[CounterParty] LIKE @cond OR
			[al_group_1].[AlertCode] LIKE @cond
		GROUP BY
			[al_group_1].[AlertKey],
			[al_group_1].[AlertCode],
			[al_group_1].[CreationDate]
	) [al_group_3]
		LEFT JOIN (
			SELECT
				[nomin_2].[CargoId] as [cond],
				[nomin_2].[DeliveryId],
				[nomin_2].[DeliveryCounterParty],
				[trade_2].[DealId] as [cond_1],
				[trade_2].[ParcelId],
				[trade_2].[CounterParty],
				[t1].[LastUpdate],
				ROW_NUMBER() OVER (PARTITION BY [t1].[AlertKey], [t1].[AlertCode], [t1].[CreationDate] ORDER BY [t1].[AlertKey]) as [rn],
				[t1].[AlertKey],
				[t1].[AlertCode],
				[t1].[CreationDate]
			FROM
				(
					SELECT
						[al_group_2].[AlertCode],
						[al_group_2].[AlertKey],
						[al_group_2].[CreationDate],
						Coalesce(MAX([au_1].[TransactionDate]), [al_group_2].[CreationDate]) as [LastUpdate]
					FROM
						[Alert] [al_group_2]
							LEFT JOIN [AuditAlert] [au_1] ON [au_1].[AlertKey] = [al_group_2].[AlertKey]
					GROUP BY
						[al_group_2].[AlertKey],
						[al_group_2].[AlertCode],
						[al_group_2].[CreationDate]
				) [t1]
					LEFT JOIN [Trade] [trade_2] ON [t1].[AlertKey] = CAST([trade_2].[DealId] AS NVarChar(11))
					LEFT JOIN [Nomin] [nomin_2] ON [t1].[AlertKey] = CAST([nomin_2].[CargoId] AS NVarChar(11))
			WHERE
				[nomin_2].[DeliveryCounterParty] LIKE @cond OR [trade_2].[CounterParty] LIKE @cond OR
				[t1].[AlertCode] LIKE @cond
		) [t2] ON [al_group_3].[AlertKey] = [t2].[AlertKey] AND [al_group_3].[AlertCode] = [t2].[AlertCode] AND strftime('%Y-%m-%d %H:%M:%f', [al_group_3].[CreationDate]) = strftime('%Y-%m-%d %H:%M:%f', [t2].[CreationDate]) AND [t2].[rn] <= 1

