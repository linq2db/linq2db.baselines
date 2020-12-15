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

CREATE TABLE [AuditAlert]
(
	[CreationDate]    DateTime          NULL,
	[AlertCode]       NVarChar(255)     NULL,
	[AlertKey]        NVarChar(255)     NULL,
	[TransactionDate] DateTime          NULL
)

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

CREATE TABLE [Nomin]
(
	[CargoId]              Int           NOT NULL,
	[DeliveryId]           Int           NOT NULL,
	[DeliveryCounterParty] NVarChar(255)     NULL
)

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
DECLARE @p_1 NVarChar(3) -- String
SET     @p_1 = '%C%'
DECLARE @p_2 NVarChar(3) -- String
SET     @p_2 = '%C%'
DECLARE @p_3 NVarChar(3) -- String
SET     @p_3 = '%C%'

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

