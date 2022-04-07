﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Alert]
(
	[AlertKey]     NVarChar(255)     NULL,
	[AlertCode]    NVarChar(255)     NULL,
	[CreationDate] DateTime2         NULL
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [AuditAlert]
(
	[CreationDate]    DateTime2         NULL,
	[AlertCode]       NVarChar(255)     NULL,
	[AlertKey]        NVarChar(255)     NULL,
	[TransactionDate] DateTime2         NULL
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Trade]
(
	[DealId]       INTEGER       NOT NULL,
	[ParcelId]     INTEGER       NOT NULL,
	[CounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Nomin]
(
	[CargoId]              INTEGER       NOT NULL,
	[DeliveryId]           INTEGER       NOT NULL,
	[DeliveryCounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite
DECLARE @DeliveryCounterParty NVarChar(3) -- String
SET     @DeliveryCounterParty = '%C%'

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
	(([nomin1].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade1].[CounterParty] LIKE @DeliveryCounterParty) OR [al_1].[alert_1] LIKE @DeliveryCounterParty)
GROUP BY
	[al_1].[alert],
	[al_1].[alert_1],
	[al_1].[alert_2]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Flat]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Nomin]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Trade]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [AuditAlert]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Alert]

