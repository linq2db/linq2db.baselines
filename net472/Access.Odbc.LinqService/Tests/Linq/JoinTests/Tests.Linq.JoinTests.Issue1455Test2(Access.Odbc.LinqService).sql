BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Alert]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Alert]
(
	[AlertKey]     NVarChar(255)     NULL,
	[AlertCode]    NVarChar(255)     NULL,
	[CreationDate] DateTime          NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [AuditAlert]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [AuditAlert]
(
	[AlertKey]        NVarChar(255)     NULL,
	[AlertCode]       NVarChar(255)     NULL,
	[CreationDate]    DateTime          NULL,
	[TransactionDate] DateTime          NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Trade]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Trade]
(
	[DealId]       Int           NOT NULL,
	[ParcelId]     Int           NOT NULL,
	[CounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Nomin]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Nomin]
(
	[CargoId]              Int           NOT NULL,
	[DeliveryId]           Int           NOT NULL,
	[DeliveryCounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Flat]

BeforeExecute
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC
DECLARE @DeliveryCounterParty NVarChar(3) -- String
SET     @DeliveryCounterParty = '%C%'
DECLARE @DeliveryCounterParty_1 NVarChar(3) -- String
SET     @DeliveryCounterParty_1 = '%C%'
DECLARE @DeliveryCounterParty_2 NVarChar(3) -- String
SET     @DeliveryCounterParty_2 = '%C%'

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
		LEFT JOIN [Trade] [trade1] ON ([al_1].[alert] = CStr([trade1].[DealId])))
		LEFT JOIN [Nomin] [nomin1] ON ([al_1].[alert] = CStr([nomin1].[CargoId]))
WHERE
	(([nomin1].[DeliveryCounterParty] LIKE ? OR [trade1].[CounterParty] LIKE ?) OR [al_1].[alert_1] LIKE ?)
GROUP BY
	[al_1].[alert],
	[al_1].[alert_1],
	[al_1].[alert_2]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Flat]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Nomin]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Trade]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [AuditAlert]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Alert]

