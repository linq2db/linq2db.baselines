BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Alert]', N'U') IS NOT NULL)
	DROP TABLE [Alert]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Alert]', N'U') IS NULL)
	CREATE TABLE [Alert]
	(
		[AlertKey]     NVarChar(4000) NOT NULL,
		[AlertCode]    NVarChar(4000) NOT NULL,
		[CreationDate] DateTime2      NOT NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[AuditAlert]', N'U') IS NOT NULL)
	DROP TABLE [AuditAlert]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[AuditAlert]', N'U') IS NULL)
	CREATE TABLE [AuditAlert]
	(
		[AlertKey]        NVarChar(4000) NOT NULL,
		[AlertCode]       NVarChar(4000) NOT NULL,
		[CreationDate]    DateTime2      NOT NULL,
		[TransactionDate] DateTime2          NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Trade]', N'U') IS NOT NULL)
	DROP TABLE [Trade]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Trade]', N'U') IS NULL)
	CREATE TABLE [Trade]
	(
		[DealId]       Int            NOT NULL,
		[ParcelId]     Int            NOT NULL,
		[CounterParty] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Nomin]', N'U') IS NOT NULL)
	DROP TABLE [Nomin]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Nomin]', N'U') IS NULL)
	CREATE TABLE [Nomin]
	(
		[CargoId]              Int            NOT NULL,
		[DeliveryId]           Int            NOT NULL,
		[DeliveryCounterParty] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Flat]', N'U') IS NOT NULL)
	DROP TABLE [Flat]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Flat]', N'U') IS NULL)
	CREATE TABLE [Flat]
	(
		[AlertKey]             NVarChar(4000)     NULL,
		[AlertCode]            NVarChar(4000)     NULL,
		[CargoId]              Int                NULL,
		[DeliveryId]           Int                NULL,
		[DeliveryCounterParty] NVarChar(4000)     NULL,
		[DealId]               Int                NULL,
		[ParcelId]             Int                NULL,
		[CounterParty]         NVarChar(4000)     NULL,
		[TransactionDate]      DateTime2          NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @DeliveryCounterParty NVarChar(4000) -- String
SET     @DeliveryCounterParty = N'%C%'

SELECT
	[al_group_3].[AlertKey],
	[al_group_3].[AlertCode],
	[t2].[LastUpdate_1],
	[t2].[CargoId],
	[t2].[DeliveryId],
	[t2].[DeliveryCounterParty],
	[t2].[DealId],
	[t2].[ParcelId],
	[t2].[CounterParty],
	[t2].[LastUpdate]
FROM
	(
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
	) [al_group_3]
		OUTER APPLY (
			SELECT TOP (1)
				[nomin_2].[CargoId],
				[nomin_2].[DeliveryId],
				[nomin_2].[DeliveryCounterParty],
				[trade_2].[DealId],
				[trade_2].[ParcelId],
				[trade_2].[CounterParty],
				Coalesce([t1].[MAX_1], [t1].[CreationDate]) as [LastUpdate],
				Coalesce([t1].[MAX_1], [t1].[CreationDate]) as [LastUpdate_1]
			FROM
				(
					SELECT
						[al_group_2].[AlertKey],
						[al_group_2].[AlertCode],
						[al_group_2].[CreationDate],
						MAX([au_1].[TransactionDate]) as [MAX_1]
					FROM
						[Alert] [al_group_2]
							LEFT JOIN [AuditAlert] [au_1] ON [au_1].[AlertKey] = [al_group_2].[AlertKey]
					GROUP BY
						[al_group_2].[AlertKey],
						[al_group_2].[AlertCode],
						[al_group_2].[CreationDate]
				) [t1]
					LEFT JOIN [Trade] [trade_2] ON [t1].[AlertKey] = CAST([trade_2].[DealId] AS NVarChar(11))
					LEFT JOIN [Nomin] [nomin_2] ON [t1].[AlertKey] = CAST([nomin_2].[CargoId] AS NVarChar(11))
			WHERE
				([nomin_2].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_2].[CounterParty] LIKE @DeliveryCounterParty OR [t1].[AlertCode] LIKE @DeliveryCounterParty) AND
				[al_group_3].[AlertKey] = [t1].[AlertKey] AND
				[al_group_3].[AlertCode] = [t1].[AlertCode] AND
				[al_group_3].[CreationDate] = [t1].[CreationDate]
		) [t2]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Flat]', N'U') IS NOT NULL)
	DROP TABLE [Flat]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Nomin]', N'U') IS NOT NULL)
	DROP TABLE [Nomin]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Trade]', N'U') IS NOT NULL)
	DROP TABLE [Trade]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[AuditAlert]', N'U') IS NOT NULL)
	DROP TABLE [AuditAlert]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Alert]', N'U') IS NOT NULL)
	DROP TABLE [Alert]

