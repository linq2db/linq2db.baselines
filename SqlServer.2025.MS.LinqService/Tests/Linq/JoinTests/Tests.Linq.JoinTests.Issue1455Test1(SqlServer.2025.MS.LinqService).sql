﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
DECLARE @cpty NVarChar(4000) -- String
SET     @cpty = N'%C%'
DECLARE @cpty_1 NVarChar(4000) -- String
SET     @cpty_1 = N'%C%'
DECLARE @cpty_2 NVarChar(4000) -- String
SET     @cpty_2 = N'%C%'
DECLARE @cpty_3 NVarChar(4000) -- String
SET     @cpty_3 = N'%C%'
DECLARE @cpty_4 NVarChar(4000) -- String
SET     @cpty_4 = N'%C%'
DECLARE @cpty_5 NVarChar(4000) -- String
SET     @cpty_5 = N'%C%'

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
					[al_group].[AlertKey],
					[al_group].[AlertCode],
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
			[nomin_1].[DeliveryCounterParty] LIKE @cpty ESCAPE N'~' OR
			[trade_1].[CounterParty] LIKE @cpty_1 ESCAPE N'~' OR
			[al_group_1].[AlertCode] LIKE @cpty_2 ESCAPE N'~'
		GROUP BY
			[al_group_1].[AlertKey],
			[al_group_1].[AlertCode],
			[al_group_1].[CreationDate]
	) [al_group_3]
		OUTER APPLY (
			SELECT TOP (1)
				[nomin_2].[CargoId] as [cond],
				[nomin_2].[DeliveryId],
				[nomin_2].[DeliveryCounterParty],
				[trade_2].[DealId] as [cond_1],
				[trade_2].[ParcelId],
				[trade_2].[CounterParty],
				Coalesce([t1].[MAX_1], [t1].[CreationDate]) as [LastUpdate]
			FROM
				(
					SELECT
						[al_group_2].[AlertKey],
						[al_group_2].[AlertCode],
						[al_group_2].[CreationDate],
						MAX([au_1].[TransactionDate]) as [MAX_1]
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
				([nomin_2].[DeliveryCounterParty] LIKE @cpty_3 ESCAPE N'~' OR [trade_2].[CounterParty] LIKE @cpty_4 ESCAPE N'~' OR [t1].[AlertCode] LIKE @cpty_5 ESCAPE N'~') AND
				[al_group_3].[AlertKey] = [t1].[AlertKey] AND
				[al_group_3].[AlertCode] = [t1].[AlertCode] AND
				[al_group_3].[CreationDate] = [t1].[CreationDate]
		) [t2]

