BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Alert]', N'U') IS NOT NULL)
	DROP TABLE [Alert]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Alert]', N'U') IS NULL)
	CREATE TABLE [Alert]
	(
		[AlertKey]     NVarChar(4000) NOT NULL,
		[AlertCode]    NVarChar(4000) NOT NULL,
		[CreationDate] DateTime       NOT NULL
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AuditAlert]', N'U') IS NOT NULL)
	DROP TABLE [AuditAlert]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AuditAlert]', N'U') IS NULL)
	CREATE TABLE [AuditAlert]
	(
		[AlertKey]        NVarChar(4000) NOT NULL,
		[AlertCode]       NVarChar(4000) NOT NULL,
		[CreationDate]    DateTime       NOT NULL,
		[TransactionDate] DateTime           NULL
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Trade]', N'U') IS NOT NULL)
	DROP TABLE [Trade]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Trade]', N'U') IS NULL)
	CREATE TABLE [Trade]
	(
		[DealId]       Int            NOT NULL,
		[ParcelId]     Int            NOT NULL,
		[CounterParty] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Nomin]', N'U') IS NOT NULL)
	DROP TABLE [Nomin]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Nomin]', N'U') IS NULL)
	CREATE TABLE [Nomin]
	(
		[CargoId]              Int            NOT NULL,
		[DeliveryId]           Int            NOT NULL,
		[DeliveryCounterParty] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Flat]', N'U') IS NOT NULL)
	DROP TABLE [Flat]

BeforeExecute
-- SqlServer.2005

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
		[TransactionDate]      DateTime           NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @DeliveryCounterParty NVarChar(4000) -- String
SET     @DeliveryCounterParty = N'%C%'

SELECT
	[al_group_4].[AlertKey],
	[al_group_4].[AlertCode],
	[t3].[LastUpdate_1],
	[t3].[CargoId],
	[t3].[DeliveryId],
	[t3].[DeliveryCounterParty],
	[t3].[DealId],
	[t3].[ParcelId],
	[t3].[CounterParty],
	[t3].[LastUpdate]
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
						LEFT JOIN [AuditAlert] [au] ON [au].[AlertKey] = [al_group].[AlertKey] AND [au].[AlertCode] = [au].[AlertCode]
				GROUP BY
					[al_group].[AlertKey],
					[al_group].[AlertCode],
					[al_group].[CreationDate]
			) [al_group_1]
				LEFT JOIN (
					SELECT
						[trade_1].[CounterParty],
						Convert(NVarChar(11), [trade_1].[DealId]) as [c1]
					FROM
						[Trade] [trade_1]
				) [trade_2] ON [al_group_1].[AlertKey] = [trade_2].[c1]
				LEFT JOIN (
					SELECT
						[nomin_1].[DeliveryCounterParty],
						Convert(NVarChar(11), [nomin_1].[CargoId]) as [c1]
					FROM
						[Nomin] [nomin_1]
				) [nomin_2] ON [al_group_1].[AlertKey] = [nomin_2].[c1]
		WHERE
			([nomin_2].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_2].[CounterParty] LIKE @DeliveryCounterParty OR [al_group_1].[AlertCode] LIKE @DeliveryCounterParty)
		GROUP BY
			[al_group_1].[AlertKey],
			[al_group_1].[AlertCode],
			[al_group_1].[CreationDate]
	) [al_group_4]
		LEFT JOIN (
			SELECT
				[nomin_4].[CargoId],
				[nomin_4].[DeliveryId],
				[nomin_4].[DeliveryCounterParty],
				[trade_4].[DealId],
				[trade_4].[ParcelId],
				[trade_4].[CounterParty],
				Coalesce([t2].[MAX_1], [t2].[CreationDate]) as [LastUpdate],
				Coalesce([t2].[MAX_1], [t2].[CreationDate]) as [LastUpdate_1],
				ROW_NUMBER() OVER (PARTITION BY [t2].[AlertKey], [t2].[AlertCode], [t2].[CreationDate] ORDER BY [t2].[AlertKey]) as [rn],
				[t2].[AlertKey],
				[t2].[AlertCode],
				[t2].[CreationDate]
			FROM
				(
					SELECT
						[al_group_3].[AlertKey],
						[al_group_3].[AlertCode],
						[al_group_3].[CreationDate],
						(
							SELECT
								MAX([t1].[TransactionDate])
							FROM
								(
									SELECT
										[au_2].[TransactionDate]
									FROM
										[Alert] [al]
											LEFT JOIN [AuditAlert] [au_2] ON [au_2].[AlertKey] = [al].[AlertKey] AND [au_2].[AlertCode] = [au_2].[AlertCode]
									WHERE
										[al_group_3].[AlertKey] = [al].[AlertKey] AND [al_group_3].[AlertCode] = [al].[AlertCode] AND
										[al_group_3].[CreationDate] = [al].[CreationDate]
								) [t1]
						) as [MAX_1]
					FROM
						(
							SELECT
								[al_group_2].[AlertKey],
								[al_group_2].[AlertCode],
								[al_group_2].[CreationDate]
							FROM
								[Alert] [al_group_2]
									LEFT JOIN [AuditAlert] [au_1] ON [au_1].[AlertKey] = [al_group_2].[AlertKey] AND [au_1].[AlertCode] = [au_1].[AlertCode]
							GROUP BY
								[al_group_2].[AlertKey],
								[al_group_2].[AlertCode],
								[al_group_2].[CreationDate]
						) [al_group_3]
				) [t2]
					LEFT JOIN (
						SELECT
							[trade_3].[CounterParty],
							[trade_3].[DealId],
							[trade_3].[ParcelId],
							Convert(NVarChar(11), [trade_3].[DealId]) as [c1]
						FROM
							[Trade] [trade_3]
					) [trade_4] ON [t2].[AlertKey] = [trade_4].[c1]
					LEFT JOIN (
						SELECT
							[nomin_3].[DeliveryCounterParty],
							[nomin_3].[CargoId],
							[nomin_3].[DeliveryId],
							Convert(NVarChar(11), [nomin_3].[CargoId]) as [c1]
						FROM
							[Nomin] [nomin_3]
					) [nomin_4] ON [t2].[AlertKey] = [nomin_4].[c1]
			WHERE
				([nomin_4].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_4].[CounterParty] LIKE @DeliveryCounterParty OR [t2].[AlertCode] LIKE @DeliveryCounterParty)
		) [t3] ON [al_group_4].[AlertKey] = [t3].[AlertKey] AND [al_group_4].[AlertCode] = [t3].[AlertCode] AND [al_group_4].[CreationDate] = [t3].[CreationDate] AND [t3].[rn] <= 1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Flat]', N'U') IS NOT NULL)
	DROP TABLE [Flat]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Nomin]', N'U') IS NOT NULL)
	DROP TABLE [Nomin]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Trade]', N'U') IS NOT NULL)
	DROP TABLE [Trade]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[AuditAlert]', N'U') IS NOT NULL)
	DROP TABLE [AuditAlert]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Alert]', N'U') IS NOT NULL)
	DROP TABLE [Alert]

