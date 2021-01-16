BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Alert]
(
	[AlertKey]     NVarChar(255)     NULL,
	[AlertCode]    NVarChar(255)     NULL,
	[CreationDate] DateTime          NULL
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [AuditAlert]
(
	[CreationDate]    DateTime          NULL,
	[AlertCode]       NVarChar(255)     NULL,
	[AlertKey]        NVarChar(255)     NULL,
	[TransactionDate] DateTime          NULL
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Trade]
(
	[DealId]       Int           NOT NULL,
	[ParcelId]     Int           NOT NULL,
	[CounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Nomin]
(
	[CargoId]              Int           NOT NULL,
	[DeliveryId]           Int           NOT NULL,
	[DeliveryCounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb
DECLARE @cpty_3 VarWChar(3) -- String
SET     @cpty_3 = '%C%'
DECLARE @cpty_4 VarWChar(3) -- String
SET     @cpty_4 = '%C%'
DECLARE @cpty_5 VarWChar(3) -- String
SET     @cpty_5 = '%C%'

SELECT
	[al_1].[alert],
	[al_1].[alert_1],
	[al_1].[alert_2]
FROM
	((
		SELECT
			[al].[AlertKey] as [alert],
			[al].[AlertCode] as [alert_1],
			[al].[CreationDate] as [alert_2]
		FROM
			[Alert] [al]
				LEFT JOIN [AuditAlert] [au1] ON (([au1].[AlertKey] = [al].[AlertKey] OR [au1].[AlertKey] IS NULL AND [al].[AlertKey] IS NULL) AND ([au1].[AlertCode] = [au1].[AlertCode] OR [au1].[AlertCode] IS NULL AND [au1].[AlertCode] IS NULL))
		GROUP BY
			[al].[AlertKey],
			[al].[AlertCode],
			[al].[CreationDate]
	) [al_1]
		LEFT JOIN [Trade] [trade1] ON (([al_1].[alert] = CStr([trade1].[DealId]) OR [al_1].[alert] IS NULL AND CStr([trade1].[DealId]) IS NULL)))
		LEFT JOIN [Nomin] [nomin1] ON (([al_1].[alert] = CStr([nomin1].[CargoId]) OR [al_1].[alert] IS NULL AND CStr([nomin1].[CargoId]) IS NULL))
WHERE
	(([nomin1].[DeliveryCounterParty] LIKE @cpty_3 OR [trade1].[CounterParty] LIKE @cpty_4) OR [al_1].[alert_1] LIKE @cpty_5)
GROUP BY
	[al_1].[alert],
	[al_1].[alert_1],
	[al_1].[alert_2]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Flat]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Nomin]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Trade]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [AuditAlert]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Alert]

