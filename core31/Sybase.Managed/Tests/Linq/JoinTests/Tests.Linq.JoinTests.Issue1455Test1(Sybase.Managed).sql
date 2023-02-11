BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Alert') IS NOT NULL)
	DROP TABLE [Alert]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Alert') IS NULL)
	EXECUTE('
		CREATE TABLE [Alert]
		(
			[AlertKey]     NVarChar(255)     NULL,
			[AlertCode]    NVarChar(255)     NULL,
			[CreationDate] DateTime          NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AuditAlert') IS NOT NULL)
	DROP TABLE [AuditAlert]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AuditAlert') IS NULL)
	EXECUTE('
		CREATE TABLE [AuditAlert]
		(
			[AlertKey]        NVarChar(255)     NULL,
			[AlertCode]       NVarChar(255)     NULL,
			[CreationDate]    DateTime          NULL,
			[TransactionDate] DateTime          NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Trade') IS NOT NULL)
	DROP TABLE [Trade]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Trade') IS NULL)
	EXECUTE('
		CREATE TABLE [Trade]
		(
			[DealId]       Int           NOT NULL,
			[ParcelId]     Int           NOT NULL,
			[CounterParty] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Nomin') IS NOT NULL)
	DROP TABLE [Nomin]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Nomin') IS NULL)
	EXECUTE('
		CREATE TABLE [Nomin]
		(
			[CargoId]              Int           NOT NULL,
			[DeliveryId]           Int           NOT NULL,
			[DeliveryCounterParty] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Flat') IS NOT NULL)
	DROP TABLE [Flat]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Flat') IS NULL)
	EXECUTE('
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
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @cpty_1 UniVarChar(3) -- String
SET     @cpty_1 = '%C%'
DECLARE @cpty_2 UniVarChar(3) -- String
SET     @cpty_2 = '%C%'
DECLARE @cpty_3 UniVarChar(3) -- String
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
		LEFT JOIN [Trade] [trade1] ON [al_1].[alert] = Convert(NVarChar(11), [trade1].[DealId])
		LEFT JOIN [Nomin] [nomin1] ON [al_1].[alert] = Convert(NVarChar(11), [nomin1].[CargoId])
WHERE
	(([nomin1].[DeliveryCounterParty] LIKE @cpty_1 ESCAPE '~' OR [trade1].[CounterParty] LIKE @cpty_2 ESCAPE '~') OR [al_1].[alert_1] LIKE @cpty_3 ESCAPE '~')
GROUP BY
	[al_1].[alert],
	[al_1].[alert_1],
	[al_1].[alert_2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Flat') IS NOT NULL)
	DROP TABLE [Flat]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Nomin') IS NOT NULL)
	DROP TABLE [Nomin]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Trade') IS NOT NULL)
	DROP TABLE [Trade]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'AuditAlert') IS NOT NULL)
	DROP TABLE [AuditAlert]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Alert') IS NOT NULL)
	DROP TABLE [Alert]

