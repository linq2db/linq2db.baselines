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
BeginTransaction(RepeatableRead)
BeforeExecute
-- Sybase.Managed Sybase
DECLARE @DeliveryCounterParty UniVarChar(3) -- String
SET     @DeliveryCounterParty = '%C%'

SELECT
	[m_1].[AlertKey],
	[m_1].[AlertCode],
	[m_1].[CreationDate],
	[nomin_2].[CargoId],
	[nomin_2].[DeliveryId],
	[nomin_2].[DeliveryCounterParty],
	[trade_2].[DealId],
	[trade_2].[ParcelId],
	[trade_2].[CounterParty],
	[d].[LastUpdate]
FROM
	(
		SELECT DISTINCT
			[t1].[AlertKey],
			[t1].[AlertCode],
			[t1].[CreationDate]
		FROM
			(
				SELECT
					[al_group].[AlertKey],
					[al_group].[AlertCode],
					[al_group].[CreationDate]
				FROM
					[Alert] [al_group]
						LEFT JOIN [AuditAlert] [au] ON [au].[AlertKey] = [al_group].[AlertKey]
				GROUP BY
					[al_group].[AlertKey],
					[al_group].[AlertCode],
					[al_group].[CreationDate]
			) [t1]
				LEFT JOIN [Trade] [trade_1] ON [t1].[AlertKey] = CAST([trade_1].[DealId] AS NVarChar(11))
				LEFT JOIN [Nomin] [nomin_1] ON [t1].[AlertKey] = CAST([nomin_1].[CargoId] AS NVarChar(11))
		WHERE
			([nomin_1].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_1].[CounterParty] LIKE @DeliveryCounterParty OR [t1].[AlertCode] LIKE @DeliveryCounterParty)
	) [m_1]
		INNER JOIN (
			SELECT
				[al_group_1].[AlertKey],
				[al_group_1].[AlertCode],
				[al_group_1].[CreationDate],
				Coalesce(MAX([au_1].[TransactionDate]), [al_group_1].[CreationDate]) as [LastUpdate]
			FROM
				[Alert] [al_group_1]
					LEFT JOIN [AuditAlert] [au_1] ON [au_1].[AlertKey] = [al_group_1].[AlertKey]
			GROUP BY
				[al_group_1].[AlertKey],
				[al_group_1].[AlertCode],
				[al_group_1].[CreationDate]
		) [d] ON [m_1].[AlertKey] = [d].[AlertKey] AND [m_1].[AlertCode] = [d].[AlertCode] AND [m_1].[CreationDate] = [d].[CreationDate]
		LEFT JOIN [Trade] [trade_2] ON [d].[AlertKey] = CAST([trade_2].[DealId] AS NVarChar(11))
		LEFT JOIN [Nomin] [nomin_2] ON [d].[AlertKey] = CAST([nomin_2].[CargoId] AS NVarChar(11))
WHERE
	([nomin_2].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_2].[CounterParty] LIKE @DeliveryCounterParty OR [d].[AlertCode] LIKE @DeliveryCounterParty)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Sybase.Managed Sybase
DECLARE @DeliveryCounterParty UniVarChar(3) -- String
SET     @DeliveryCounterParty = '%C%'

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
				LEFT JOIN [AuditAlert] [au] ON [au].[AlertKey] = [al_group].[AlertKey]
		GROUP BY
			[al_group].[AlertKey],
			[al_group].[AlertCode],
			[al_group].[CreationDate]
	) [al_group_1]
		LEFT JOIN [Trade] [trade_1] ON [al_group_1].[AlertKey] = CAST([trade_1].[DealId] AS NVarChar(11))
		LEFT JOIN [Nomin] [nomin_1] ON [al_group_1].[AlertKey] = CAST([nomin_1].[CargoId] AS NVarChar(11))
WHERE
	([nomin_1].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_1].[CounterParty] LIKE @DeliveryCounterParty OR [al_group_1].[AlertCode] LIKE @DeliveryCounterParty)
GROUP BY
	[al_group_1].[AlertKey],
	[al_group_1].[AlertCode],
	[al_group_1].[CreationDate]

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

