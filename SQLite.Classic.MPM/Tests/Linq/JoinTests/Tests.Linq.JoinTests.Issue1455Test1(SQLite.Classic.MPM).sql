BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Alert]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Alert]
(
	[AlertKey]     NVarChar(255) NOT NULL,
	[AlertCode]    NVarChar(255) NOT NULL,
	[CreationDate] DateTime2     NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [AuditAlert]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [AuditAlert]
(
	[AlertKey]        NVarChar(255) NOT NULL,
	[AlertCode]       NVarChar(255) NOT NULL,
	[CreationDate]    DateTime2     NOT NULL,
	[TransactionDate] DateTime2         NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Trade]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Trade]
(
	[DealId]       INTEGER       NOT NULL,
	[ParcelId]     INTEGER       NOT NULL,
	[CounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Nomin]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Nomin]
(
	[CargoId]              INTEGER       NOT NULL,
	[DeliveryId]           INTEGER       NOT NULL,
	[DeliveryCounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Flat]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @cpty NVarChar(3) -- String
SET     @cpty = '%C%'
DECLARE @cpty_1 NVarChar(3) -- String
SET     @cpty_1 = '%C%'
DECLARE @cpty_2 NVarChar(3) -- String
SET     @cpty_2 = '%C%'
DECLARE @cpty_3 NVarChar(3) -- String
SET     @cpty_3 = '%C%'
DECLARE @cpty_4 NVarChar(3) -- String
SET     @cpty_4 = '%C%'
DECLARE @cpty_5 NVarChar(3) -- String
SET     @cpty_5 = '%C%'

SELECT
	[al_group_3].[AlertKey],
	[al_group_3].[AlertCode],
	[t2].[LastUpdate_1],
	[t2].[CargoId],
	[t2].[DeliveryId],
	[t2].[DeliveryCounterParty],
	[t2].[DealId],
	[t2].[ParcelId],
	[t2].[CounterParty],
	[t2].[LastUpdate]
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
			([nomin_2].[DeliveryCounterParty] LIKE @cpty ESCAPE '~' OR [trade_2].[CounterParty] LIKE @cpty_1 ESCAPE '~' OR [al_group_1].[AlertCode] LIKE @cpty_2 ESCAPE '~')
		GROUP BY
			[al_group_1].[AlertKey],
			[al_group_1].[AlertCode],
			[al_group_1].[CreationDate]
	) [al_group_3]
		LEFT JOIN (
			SELECT
				[nomin_4].[CargoId],
				[nomin_4].[DeliveryId],
				[nomin_4].[DeliveryCounterParty],
				[trade_4].[DealId],
				[trade_4].[ParcelId],
				[trade_4].[CounterParty],
				Coalesce([t1].[Max_1], [t1].[CreationDate]) as [LastUpdate],
				Coalesce([t1].[Max_1], [t1].[CreationDate]) as [LastUpdate_1],
				ROW_NUMBER() OVER (PARTITION BY [t1].[AlertKey], [t1].[AlertCode], [t1].[CreationDate] ORDER BY [t1].[AlertKey]) as [rn],
				[t1].[AlertKey],
				[t1].[AlertCode],
				[t1].[CreationDate]
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
				([nomin_4].[DeliveryCounterParty] LIKE @cpty_3 ESCAPE '~' OR [trade_4].[CounterParty] LIKE @cpty_4 ESCAPE '~' OR [t1].[AlertCode] LIKE @cpty_5 ESCAPE '~')
		) [t2] ON [al_group_3].[AlertKey] = [t2].[AlertKey] AND [al_group_3].[AlertCode] = [t2].[AlertCode] AND DateTime([al_group_3].[CreationDate]) = DateTime([t2].[CreationDate]) AND [t2].[rn] <= 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Flat]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Nomin]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Trade]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [AuditAlert]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Alert]

