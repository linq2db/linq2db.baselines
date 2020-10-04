BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Alert]
(
	[AlertKey]     NVarChar(255)     NULL,
	[AlertCode]    NVarChar(255)     NULL,
	[CreationDate] DateTime2         NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [AuditAlert]
(
	[CreationDate]    DateTime2         NULL,
	[AlertCode]       NVarChar(255)     NULL,
	[AlertKey]        NVarChar(255)     NULL,
	[TransactionDate] DateTime2         NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Trade]
(
	[DealId]       INTEGER       NOT NULL,
	[ParcelId]     INTEGER       NOT NULL,
	[CounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Nomin]
(
	[CargoId]              INTEGER       NOT NULL,
	[DeliveryId]           INTEGER       NOT NULL,
	[DeliveryCounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Flat]
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
DECLARE @p1 NVarChar(3) -- String
SET     @p1 = '%C%'
DECLARE @p2 NVarChar(3) -- String
SET     @p2 = '%C%'
DECLARE @p3 NVarChar(3) -- String
SET     @p3 = '%C%'

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
				LEFT JOIN [AuditAlert] [au1] ON ([au1].[AlertKey] IS NULL AND [al].[AlertKey] IS NULL OR [au1].[AlertKey] = [al].[AlertKey]) AND ([au1].[AlertCode] IS NULL AND [au1].[AlertCode] IS NULL OR [au1].[AlertCode] = [au1].[AlertCode])
		GROUP BY
			[al].[AlertKey],
			[al].[AlertCode],
			[al].[CreationDate]
	) [al_1]
		LEFT JOIN [Trade] [trade1] ON [al_1].[alert] = Cast([trade1].[DealId] as NVarChar(11))
		LEFT JOIN [Nomin] [nomin1] ON [al_1].[alert] = Cast([nomin1].[CargoId] as NVarChar(11))
WHERE
	(([nomin1].[DeliveryCounterParty] LIKE @p1 OR [trade1].[CounterParty] LIKE @p2) OR [al_1].[alert_1] LIKE @p3)
GROUP BY
	[al_1].[alert],
	[al_1].[alert_1],
	[al_1].[alert_2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Flat]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Nomin]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Trade]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [AuditAlert]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [Alert]

