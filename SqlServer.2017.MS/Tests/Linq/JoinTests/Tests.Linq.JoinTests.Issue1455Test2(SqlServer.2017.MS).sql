-- SqlServer.2017.MS SqlServer.2017
DECLARE @DeliveryCounterParty NVarChar(4000) -- String
SET     @DeliveryCounterParty = N'%C%'

SELECT
	[al_group_3].[Id],
	[t2].[LastUpdate],
	[t2].[CargoId],
	[t2].[DeliveryId],
	[t2].[DeliveryCounterParty],
	[t2].[DealId],
	[t2].[ParcelId],
	[t2].[CounterParty]
FROM
	(
		SELECT DISTINCT
			[al_group_1].[Id]
		FROM
			(
				SELECT DISTINCT
					[al_group].[AlertCode],
					[al_group].[Id],
					[al_group].[AlertKey]
				FROM
					[Alert] [al_group]
						LEFT JOIN [AuditAlert] [au] ON [au].[AlertKey] = [al_group].[AlertKey]
			) [al_group_1]
				LEFT JOIN [Trade] [trade_1] ON [al_group_1].[AlertKey] = CAST([trade_1].[DealId] AS NVarChar(11))
				LEFT JOIN [Nomin] [nomin_1] ON [al_group_1].[AlertKey] = CAST([nomin_1].[CargoId] AS NVarChar(11))
		WHERE
			[nomin_1].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR
			[trade_1].[CounterParty] LIKE @DeliveryCounterParty OR
			[al_group_1].[AlertCode] LIKE @DeliveryCounterParty
	) [al_group_3]
		OUTER APPLY (
			SELECT TOP (1)
				[nomin_2].[CargoId],
				[nomin_2].[DeliveryId],
				[nomin_2].[DeliveryCounterParty],
				[trade_2].[DealId],
				[trade_2].[ParcelId],
				[trade_2].[CounterParty],
				[t1].[LastUpdate]
			FROM
				(
					SELECT
						[al_group_2].[AlertCode],
						[al_group_2].[Id],
						Coalesce(MAX([au_1].[TransactionDate]), [al_group_2].[CreationDate]) as [LastUpdate],
						[al_group_2].[AlertKey]
					FROM
						[Alert] [al_group_2]
							LEFT JOIN [AuditAlert] [au_1] ON [au_1].[AlertKey] = [al_group_2].[AlertKey]
					GROUP BY
						[al_group_2].[Id],
						[al_group_2].[AlertKey],
						[al_group_2].[AlertCode],
						[al_group_2].[CreationDate]
				) [t1]
					LEFT JOIN [Trade] [trade_2] ON [t1].[AlertKey] = CAST([trade_2].[DealId] AS NVarChar(11))
					LEFT JOIN [Nomin] [nomin_2] ON [t1].[AlertKey] = CAST([nomin_2].[CargoId] AS NVarChar(11))
			WHERE
				([nomin_2].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_2].[CounterParty] LIKE @DeliveryCounterParty OR [t1].[AlertCode] LIKE @DeliveryCounterParty) AND
				[al_group_3].[Id] = [t1].[Id]
		) [t2]

