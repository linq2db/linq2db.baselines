BeforeExecute
-- SqlCe

CREATE TABLE [Alert]
(
	[AlertKey]     NVarChar(255)     NULL,
	[AlertCode]    NVarChar(255)     NULL,
	[CreationDate] DateTime          NULL
)

BeforeExecute
-- SqlCe

CREATE TABLE [AuditAlert]
(
	[CreationDate]    DateTime          NULL,
	[AlertCode]       NVarChar(255)     NULL,
	[AlertKey]        NVarChar(255)     NULL,
	[TransactionDate] DateTime          NULL
)

BeforeExecute
-- SqlCe

CREATE TABLE [Trade]
(
	[DealId]       Int           NOT NULL,
	[ParcelId]     Int           NOT NULL,
	[CounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

CREATE TABLE [Nomin]
(
	[CargoId]              Int           NOT NULL,
	[DeliveryId]           Int           NOT NULL,
	[DeliveryCounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

CREATE TABLE [Flat]
(
	[AlertKey]             NVarChar(255)     NULL,
	[AlertCode]            NVarChar(255)     NULL,
	[CargoId]              Int               NULL,
	[DeliveryId]           Int               NULL,
	[DeliveryCounterParty] NVarChar(255)     NULL,
	[DealId]               Int               NULL,
	[ParcelId]             Int               NULL,
	[CounterParty]         NVarChar(255)     NULL,
	[TransactionDate]      DateTime          NULL
)

BeforeExecute
-- SqlCe
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
		LEFT JOIN [Trade] [trade1] ON ([al_1].[alert] IS NOT NULL AND [al_1].[alert] = Convert(NVarChar(11), [trade1].[DealId]))
		LEFT JOIN [Nomin] [nomin1] ON ([al_1].[alert] IS NOT NULL AND [al_1].[alert] = Convert(NVarChar(11), [nomin1].[CargoId]))
WHERE
	(([nomin1].[DeliveryCounterParty] LIKE @p1 OR [trade1].[CounterParty] LIKE @p2) OR [al_1].[alert_1] LIKE @p3)
GROUP BY
	[al_1].[alert],
	[al_1].[alert_1],
	[al_1].[alert_2]

BeforeExecute
-- SqlCe

DROP TABLE [Flat]

BeforeExecute
-- SqlCe

DROP TABLE [Nomin]

BeforeExecute
-- SqlCe

DROP TABLE [Trade]

BeforeExecute
-- SqlCe

DROP TABLE [AuditAlert]

BeforeExecute
-- SqlCe

DROP TABLE [Alert]

