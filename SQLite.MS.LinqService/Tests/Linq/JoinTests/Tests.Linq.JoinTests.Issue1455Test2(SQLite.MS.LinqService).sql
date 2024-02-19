BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Alert]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Alert]
(
	[AlertKey]     NVarChar(255) NOT NULL,
	[AlertCode]    NVarChar(255) NOT NULL,
	[CreationDate] DateTime2     NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AuditAlert]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [AuditAlert]
(
	[AlertKey]        NVarChar(255) NOT NULL,
	[AlertCode]       NVarChar(255) NOT NULL,
	[CreationDate]    DateTime2     NOT NULL,
	[TransactionDate] DateTime2         NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Trade]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Trade]
(
	[DealId]       INTEGER       NOT NULL,
	[ParcelId]     INTEGER       NOT NULL,
	[CounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Nomin]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Nomin]
(
	[CargoId]              INTEGER       NOT NULL,
	[DeliveryId]           INTEGER       NOT NULL,
	[DeliveryCounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Flat]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Flat]
(
	[AlertKey]             NVarChar(255)     NULL,
	[AlertCode]            NVarChar(255)     NULL,
	[CargoId]              INTEGER           NULL,
	[DeliveryId]           INTEGER           NULL,
	[DeliveryCounterParty] NVarChar(255)     NULL,
	[DealId]               INTEGER           NULL,
	[ParcelId]             INTEGER           NULL,
	[CounterParty]         NVarChar(255)     NULL,
	[TransactionDate]      DateTime2         NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @DeliveryCounterParty NVarChar(3) -- String
SET     @DeliveryCounterParty = '%C%'

SELECT
	[al_group_1].[AlertKey],
	[al_group_1].[AlertCode],
	(
		SELECT
			Coalesce([t1].[Max_1], [t1].[CreationDate])
		FROM
			(
				SELECT
					[al_group_2].[AlertKey],
					[al_group_2].[AlertCode],
					[al_group_2].[CreationDate],
					Max([au_1].[TransactionDate]) as [Max_1]
				FROM
					[Alert] [al_group_2]
						LEFT JOIN [AuditAlert] [au_1] ON [au_1].[AlertKey] = [al_group_2].[AlertKey] AND [au_1].[AlertCode] = [au_1].[AlertCode]
				GROUP BY
					[al_group_2].[AlertKey],
					[al_group_2].[AlertCode],
					[al_group_2].[CreationDate]
			) [t1]
				LEFT JOIN (
					SELECT
						[trade_3].[CounterParty],
						[trade_3].[DealId],
						[trade_3].[ParcelId],
						Cast([trade_3].[DealId] as NVarChar(255)) as [c1]
					FROM
						[Trade] [trade_3]
				) [trade_4] ON [t1].[AlertKey] = [trade_4].[c1]
				LEFT JOIN (
					SELECT
						[nomin_3].[DeliveryCounterParty],
						[nomin_3].[CargoId],
						[nomin_3].[DeliveryId],
						Cast([nomin_3].[CargoId] as NVarChar(255)) as [c1]
					FROM
						[Nomin] [nomin_3]
				) [nomin_4] ON [t1].[AlertKey] = [nomin_4].[c1]
		WHERE
			([nomin_4].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_4].[CounterParty] LIKE @DeliveryCounterParty OR [t1].[AlertCode] LIKE @DeliveryCounterParty) AND
			[al_group_1].[AlertKey] = [t1].[AlertKey] AND
			[al_group_1].[AlertCode] = [t1].[AlertCode] AND
			DateTime([al_group_1].[CreationDate]) = DateTime([t1].[CreationDate])
		LIMIT 1
	),
	(
		SELECT
			[nomin_6].[CargoId]
		FROM
			(
				SELECT
					[al_group_3].[AlertKey],
					[al_group_3].[AlertCode],
					[al_group_3].[CreationDate],
					Max([au_2].[TransactionDate]) as [Max_1]
				FROM
					[Alert] [al_group_3]
						LEFT JOIN [AuditAlert] [au_2] ON [au_2].[AlertKey] = [al_group_3].[AlertKey] AND [au_2].[AlertCode] = [au_2].[AlertCode]
				GROUP BY
					[al_group_3].[AlertKey],
					[al_group_3].[AlertCode],
					[al_group_3].[CreationDate]
			) [t2]
				LEFT JOIN (
					SELECT
						[trade_5].[CounterParty],
						[trade_5].[DealId],
						[trade_5].[ParcelId],
						Cast([trade_5].[DealId] as NVarChar(255)) as [c1]
					FROM
						[Trade] [trade_5]
				) [trade_6] ON [t2].[AlertKey] = [trade_6].[c1]
				LEFT JOIN (
					SELECT
						[nomin_5].[DeliveryCounterParty],
						[nomin_5].[CargoId],
						[nomin_5].[DeliveryId],
						Cast([nomin_5].[CargoId] as NVarChar(255)) as [c1]
					FROM
						[Nomin] [nomin_5]
				) [nomin_6] ON [t2].[AlertKey] = [nomin_6].[c1]
		WHERE
			([nomin_6].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_6].[CounterParty] LIKE @DeliveryCounterParty OR [t2].[AlertCode] LIKE @DeliveryCounterParty) AND
			[al_group_1].[AlertKey] = [t2].[AlertKey] AND
			[al_group_1].[AlertCode] = [t2].[AlertCode] AND
			DateTime([al_group_1].[CreationDate]) = DateTime([t2].[CreationDate])
		LIMIT 1
	),
	(
		SELECT
			[nomin_8].[DeliveryId]
		FROM
			(
				SELECT
					[al_group_4].[AlertKey],
					[al_group_4].[AlertCode],
					[al_group_4].[CreationDate],
					Max([au_3].[TransactionDate]) as [Max_1]
				FROM
					[Alert] [al_group_4]
						LEFT JOIN [AuditAlert] [au_3] ON [au_3].[AlertKey] = [al_group_4].[AlertKey] AND [au_3].[AlertCode] = [au_3].[AlertCode]
				GROUP BY
					[al_group_4].[AlertKey],
					[al_group_4].[AlertCode],
					[al_group_4].[CreationDate]
			) [t3]
				LEFT JOIN (
					SELECT
						[trade_7].[CounterParty],
						[trade_7].[DealId],
						[trade_7].[ParcelId],
						Cast([trade_7].[DealId] as NVarChar(255)) as [c1]
					FROM
						[Trade] [trade_7]
				) [trade_8] ON [t3].[AlertKey] = [trade_8].[c1]
				LEFT JOIN (
					SELECT
						[nomin_7].[DeliveryCounterParty],
						[nomin_7].[CargoId],
						[nomin_7].[DeliveryId],
						Cast([nomin_7].[CargoId] as NVarChar(255)) as [c1]
					FROM
						[Nomin] [nomin_7]
				) [nomin_8] ON [t3].[AlertKey] = [nomin_8].[c1]
		WHERE
			([nomin_8].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_8].[CounterParty] LIKE @DeliveryCounterParty OR [t3].[AlertCode] LIKE @DeliveryCounterParty) AND
			[al_group_1].[AlertKey] = [t3].[AlertKey] AND
			[al_group_1].[AlertCode] = [t3].[AlertCode] AND
			DateTime([al_group_1].[CreationDate]) = DateTime([t3].[CreationDate])
		LIMIT 1
	),
	(
		SELECT
			[nomin_10].[DeliveryCounterParty]
		FROM
			(
				SELECT
					[al_group_5].[AlertKey],
					[al_group_5].[AlertCode],
					[al_group_5].[CreationDate],
					Max([au_4].[TransactionDate]) as [Max_1]
				FROM
					[Alert] [al_group_5]
						LEFT JOIN [AuditAlert] [au_4] ON [au_4].[AlertKey] = [al_group_5].[AlertKey] AND [au_4].[AlertCode] = [au_4].[AlertCode]
				GROUP BY
					[al_group_5].[AlertKey],
					[al_group_5].[AlertCode],
					[al_group_5].[CreationDate]
			) [t4]
				LEFT JOIN (
					SELECT
						[trade_9].[CounterParty],
						[trade_9].[DealId],
						[trade_9].[ParcelId],
						Cast([trade_9].[DealId] as NVarChar(255)) as [c1]
					FROM
						[Trade] [trade_9]
				) [trade_10] ON [t4].[AlertKey] = [trade_10].[c1]
				LEFT JOIN (
					SELECT
						[nomin_9].[DeliveryCounterParty],
						[nomin_9].[CargoId],
						[nomin_9].[DeliveryId],
						Cast([nomin_9].[CargoId] as NVarChar(255)) as [c1]
					FROM
						[Nomin] [nomin_9]
				) [nomin_10] ON [t4].[AlertKey] = [nomin_10].[c1]
		WHERE
			([nomin_10].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_10].[CounterParty] LIKE @DeliveryCounterParty OR [t4].[AlertCode] LIKE @DeliveryCounterParty) AND
			[al_group_1].[AlertKey] = [t4].[AlertKey] AND
			[al_group_1].[AlertCode] = [t4].[AlertCode] AND
			DateTime([al_group_1].[CreationDate]) = DateTime([t4].[CreationDate])
		LIMIT 1
	),
	(
		SELECT
			[trade_12].[DealId]
		FROM
			(
				SELECT
					[al_group_6].[AlertKey],
					[al_group_6].[AlertCode],
					[al_group_6].[CreationDate],
					Max([au_5].[TransactionDate]) as [Max_1]
				FROM
					[Alert] [al_group_6]
						LEFT JOIN [AuditAlert] [au_5] ON [au_5].[AlertKey] = [al_group_6].[AlertKey] AND [au_5].[AlertCode] = [au_5].[AlertCode]
				GROUP BY
					[al_group_6].[AlertKey],
					[al_group_6].[AlertCode],
					[al_group_6].[CreationDate]
			) [t5]
				LEFT JOIN (
					SELECT
						[trade_11].[CounterParty],
						[trade_11].[DealId],
						[trade_11].[ParcelId],
						Cast([trade_11].[DealId] as NVarChar(255)) as [c1]
					FROM
						[Trade] [trade_11]
				) [trade_12] ON [t5].[AlertKey] = [trade_12].[c1]
				LEFT JOIN (
					SELECT
						[nomin_11].[DeliveryCounterParty],
						[nomin_11].[CargoId],
						[nomin_11].[DeliveryId],
						Cast([nomin_11].[CargoId] as NVarChar(255)) as [c1]
					FROM
						[Nomin] [nomin_11]
				) [nomin_12] ON [t5].[AlertKey] = [nomin_12].[c1]
		WHERE
			([nomin_12].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_12].[CounterParty] LIKE @DeliveryCounterParty OR [t5].[AlertCode] LIKE @DeliveryCounterParty) AND
			[al_group_1].[AlertKey] = [t5].[AlertKey] AND
			[al_group_1].[AlertCode] = [t5].[AlertCode] AND
			DateTime([al_group_1].[CreationDate]) = DateTime([t5].[CreationDate])
		LIMIT 1
	),
	(
		SELECT
			[trade_14].[ParcelId]
		FROM
			(
				SELECT
					[al_group_7].[AlertKey],
					[al_group_7].[AlertCode],
					[al_group_7].[CreationDate],
					Max([au_6].[TransactionDate]) as [Max_1]
				FROM
					[Alert] [al_group_7]
						LEFT JOIN [AuditAlert] [au_6] ON [au_6].[AlertKey] = [al_group_7].[AlertKey] AND [au_6].[AlertCode] = [au_6].[AlertCode]
				GROUP BY
					[al_group_7].[AlertKey],
					[al_group_7].[AlertCode],
					[al_group_7].[CreationDate]
			) [t6]
				LEFT JOIN (
					SELECT
						[trade_13].[CounterParty],
						[trade_13].[DealId],
						[trade_13].[ParcelId],
						Cast([trade_13].[DealId] as NVarChar(255)) as [c1]
					FROM
						[Trade] [trade_13]
				) [trade_14] ON [t6].[AlertKey] = [trade_14].[c1]
				LEFT JOIN (
					SELECT
						[nomin_13].[DeliveryCounterParty],
						[nomin_13].[CargoId],
						[nomin_13].[DeliveryId],
						Cast([nomin_13].[CargoId] as NVarChar(255)) as [c1]
					FROM
						[Nomin] [nomin_13]
				) [nomin_14] ON [t6].[AlertKey] = [nomin_14].[c1]
		WHERE
			([nomin_14].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_14].[CounterParty] LIKE @DeliveryCounterParty OR [t6].[AlertCode] LIKE @DeliveryCounterParty) AND
			[al_group_1].[AlertKey] = [t6].[AlertKey] AND
			[al_group_1].[AlertCode] = [t6].[AlertCode] AND
			DateTime([al_group_1].[CreationDate]) = DateTime([t6].[CreationDate])
		LIMIT 1
	),
	(
		SELECT
			[trade_16].[CounterParty]
		FROM
			(
				SELECT
					[al_group_8].[AlertKey],
					[al_group_8].[AlertCode],
					[al_group_8].[CreationDate],
					Max([au_7].[TransactionDate]) as [Max_1]
				FROM
					[Alert] [al_group_8]
						LEFT JOIN [AuditAlert] [au_7] ON [au_7].[AlertKey] = [al_group_8].[AlertKey] AND [au_7].[AlertCode] = [au_7].[AlertCode]
				GROUP BY
					[al_group_8].[AlertKey],
					[al_group_8].[AlertCode],
					[al_group_8].[CreationDate]
			) [t7]
				LEFT JOIN (
					SELECT
						[trade_15].[CounterParty],
						[trade_15].[DealId],
						[trade_15].[ParcelId],
						Cast([trade_15].[DealId] as NVarChar(255)) as [c1]
					FROM
						[Trade] [trade_15]
				) [trade_16] ON [t7].[AlertKey] = [trade_16].[c1]
				LEFT JOIN (
					SELECT
						[nomin_15].[DeliveryCounterParty],
						[nomin_15].[CargoId],
						[nomin_15].[DeliveryId],
						Cast([nomin_15].[CargoId] as NVarChar(255)) as [c1]
					FROM
						[Nomin] [nomin_15]
				) [nomin_16] ON [t7].[AlertKey] = [nomin_16].[c1]
		WHERE
			([nomin_16].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_16].[CounterParty] LIKE @DeliveryCounterParty OR [t7].[AlertCode] LIKE @DeliveryCounterParty) AND
			[al_group_1].[AlertKey] = [t7].[AlertKey] AND
			[al_group_1].[AlertCode] = [t7].[AlertCode] AND
			DateTime([al_group_1].[CreationDate]) = DateTime([t7].[CreationDate])
		LIMIT 1
	),
	(
		SELECT
			Coalesce([t8].[Max_1], [t8].[CreationDate])
		FROM
			(
				SELECT
					[al_group_9].[AlertKey],
					[al_group_9].[AlertCode],
					[al_group_9].[CreationDate],
					Max([au_8].[TransactionDate]) as [Max_1]
				FROM
					[Alert] [al_group_9]
						LEFT JOIN [AuditAlert] [au_8] ON [au_8].[AlertKey] = [al_group_9].[AlertKey] AND [au_8].[AlertCode] = [au_8].[AlertCode]
				GROUP BY
					[al_group_9].[AlertKey],
					[al_group_9].[AlertCode],
					[al_group_9].[CreationDate]
			) [t8]
				LEFT JOIN (
					SELECT
						[trade_17].[CounterParty],
						[trade_17].[DealId],
						[trade_17].[ParcelId],
						Cast([trade_17].[DealId] as NVarChar(255)) as [c1]
					FROM
						[Trade] [trade_17]
				) [trade_18] ON [t8].[AlertKey] = [trade_18].[c1]
				LEFT JOIN (
					SELECT
						[nomin_17].[DeliveryCounterParty],
						[nomin_17].[CargoId],
						[nomin_17].[DeliveryId],
						Cast([nomin_17].[CargoId] as NVarChar(255)) as [c1]
					FROM
						[Nomin] [nomin_17]
				) [nomin_18] ON [t8].[AlertKey] = [nomin_18].[c1]
		WHERE
			([nomin_18].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_18].[CounterParty] LIKE @DeliveryCounterParty OR [t8].[AlertCode] LIKE @DeliveryCounterParty) AND
			[al_group_1].[AlertKey] = [t8].[AlertKey] AND
			[al_group_1].[AlertCode] = [t8].[AlertCode] AND
			DateTime([al_group_1].[CreationDate]) = DateTime([t8].[CreationDate])
		LIMIT 1
	)
FROM
	(
		SELECT
			[al_group].[AlertKey],
			[al_group].[AlertCode],
			[al_group].[CreationDate]
		FROM
			[Alert] [al_group]
				LEFT JOIN [AuditAlert] [au] ON [au].[AlertKey] = [al_group].[AlertKey] AND [au].[AlertCode] = [au].[AlertCode]
		GROUP BY
			[al_group].[AlertKey],
			[al_group].[AlertCode],
			[al_group].[CreationDate]
	) [al_group_1]
		LEFT JOIN (
			SELECT
				[trade_1].[CounterParty],
				Cast([trade_1].[DealId] as NVarChar(255)) as [c1]
			FROM
				[Trade] [trade_1]
		) [trade_2] ON [al_group_1].[AlertKey] = [trade_2].[c1]
		LEFT JOIN (
			SELECT
				[nomin_1].[DeliveryCounterParty],
				Cast([nomin_1].[CargoId] as NVarChar(255)) as [c1]
			FROM
				[Nomin] [nomin_1]
		) [nomin_2] ON [al_group_1].[AlertKey] = [nomin_2].[c1]
WHERE
	([nomin_2].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_2].[CounterParty] LIKE @DeliveryCounterParty OR [al_group_1].[AlertCode] LIKE @DeliveryCounterParty)
GROUP BY
	[al_group_1].[AlertKey],
	[al_group_1].[AlertCode],
	[al_group_1].[CreationDate]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Flat]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Nomin]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Trade]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [AuditAlert]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Alert]

