BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Alert]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Alert]
(
	[AlertKey]     NVarChar(255)     NULL,
	[AlertCode]    NVarChar(255)     NULL,
	[CreationDate] DateTime2         NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [AuditAlert]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [AuditAlert]
(
	[AlertKey]        NVarChar(255)     NULL,
	[AlertCode]       NVarChar(255)     NULL,
	[CreationDate]    DateTime2         NULL,
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
DECLARE @cpty_1 NVarChar(3) -- String
SET     @cpty_1 = '%C%'
DECLARE @cpty_2 NVarChar(3) -- String
SET     @cpty_2 = '%C%'
DECLARE @cpty_3 NVarChar(3) -- String
SET     @cpty_3 = '%C%'

SELECT
	[al_1].[alert],
	[al_1].[alert_1],
	[al_1].[alert_2]
FROM
	(
		SELECT
			[al].[AlertKey] as [alert],
			[al].[AlertCode] as [alert_1],
			[al].[CreationDate] as [alert_2]
		FROM
			[Alert] [al]
				LEFT JOIN [AuditAlert] [au1] ON ([au1].[AlertKey] = [al].[AlertKey] OR [au1].[AlertKey] IS NULL AND [al].[AlertKey] IS NULL) AND ([au1].[AlertCode] = [au1].[AlertCode] OR [au1].[AlertCode] IS NULL AND [au1].[AlertCode] IS NULL)
		GROUP BY
			[al].[AlertKey],
			[al].[AlertCode],
			[al].[CreationDate]
	) [al_1]
		LEFT JOIN [Trade] [trade1] ON [al_1].[alert] = Cast([trade1].[DealId] as NVarChar(11))
		LEFT JOIN [Nomin] [nomin1] ON [al_1].[alert] = Cast([nomin1].[CargoId] as NVarChar(11))
WHERE
	(([nomin1].[DeliveryCounterParty] LIKE @cpty_1 ESCAPE '~' OR [trade1].[CounterParty] LIKE @cpty_2 ESCAPE '~') OR [al_1].[alert_1] LIKE @cpty_3 ESCAPE '~')
GROUP BY
	[al_1].[alert],
	[al_1].[alert_1],
	[al_1].[alert_2]

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

