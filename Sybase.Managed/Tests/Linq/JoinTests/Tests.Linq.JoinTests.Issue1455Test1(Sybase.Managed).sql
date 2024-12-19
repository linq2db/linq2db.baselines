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
			[AlertKey]     NVarChar(255) NOT NULL,
			[AlertCode]    NVarChar(255) NOT NULL,
			[CreationDate] DateTime      NOT NULL
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
			[AlertKey]        NVarChar(255) NOT NULL,
			[AlertCode]       NVarChar(255) NOT NULL,
			[CreationDate]    DateTime      NOT NULL,
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

