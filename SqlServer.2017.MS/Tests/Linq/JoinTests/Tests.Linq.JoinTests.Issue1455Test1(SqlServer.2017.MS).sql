BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Alert]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Alert]', N'U') IS NULL)
	CREATE TABLE [Alert]
	(
		[AlertKey]     NVarChar(4000) NOT NULL,
		[AlertCode]    NVarChar(4000) NOT NULL,
		[CreationDate] DateTime2      NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [AuditAlert]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[AuditAlert]', N'U') IS NULL)
	CREATE TABLE [AuditAlert]
	(
		[AlertKey]        NVarChar(4000) NOT NULL,
		[AlertCode]       NVarChar(4000) NOT NULL,
		[CreationDate]    DateTime2      NOT NULL,
		[TransactionDate] DateTime2          NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Trade]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Trade]', N'U') IS NULL)
	CREATE TABLE [Trade]
	(
		[DealId]       Int            NOT NULL,
		[ParcelId]     Int            NOT NULL,
		[CounterParty] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Nomin]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Nomin]', N'U') IS NULL)
	CREATE TABLE [Nomin]
	(
		[CargoId]              Int            NOT NULL,
		[DeliveryId]           Int            NOT NULL,
		[DeliveryCounterParty] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Flat]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
-- SqlServer.2017.MS SqlServer.2017
DECLARE @cpty NVarChar(4000) -- String
SET     @cpty = N'%C%'
DECLARE @cpty_1 NVarChar(4000) -- String
SET     @cpty_1 = N'%C%'
DECLARE @cpty_2 NVarChar(4000) -- String
SET     @cpty_2 = N'%C%'
DECLARE @cpty_3 NVarChar(4000) -- String
SET     @cpty_3 = N'%C%'
DECLARE @cpty_4 NVarChar(4000) -- String
SET     @cpty_4 = N'%C%'
DECLARE @cpty_5 NVarChar(4000) -- String
SET     @cpty_5 = N'%C%'

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
				LEFT JOIN [Trade] [trade_1] ON [al_group_1].[AlertKey] = Convert(NVarChar(11), [trade_1].[DealId])
				LEFT JOIN [Nomin] [nomin_1] ON [al_group_1].[AlertKey] = Convert(NVarChar(11), [nomin_1].[CargoId])
		WHERE
			([nomin_1].[DeliveryCounterParty] LIKE @cpty ESCAPE N'~' OR [trade_1].[CounterParty] LIKE @cpty_1 ESCAPE N'~' OR [al_group_1].[AlertCode] LIKE @cpty_2 ESCAPE N'~')
		GROUP BY
			[al_group_1].[AlertKey],
			[al_group_1].[AlertCode],
			[al_group_1].[CreationDate]
	) [al_group_4]
		OUTER APPLY (
			SELECT TOP (1)
				[nomin_2].[CargoId],
				[nomin_2].[DeliveryId],
				[nomin_2].[DeliveryCounterParty],
				[trade_2].[DealId],
				[trade_2].[ParcelId],
				[trade_2].[CounterParty],
				Coalesce([t2].[MAX_1], [t2].[CreationDate]) as [LastUpdate],
				Coalesce([t2].[MAX_1], [t2].[CreationDate]) as [LastUpdate_1]
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
					LEFT JOIN [Trade] [trade_2] ON [t2].[AlertKey] = Convert(NVarChar(11), [trade_2].[DealId])
					LEFT JOIN [Nomin] [nomin_2] ON [t2].[AlertKey] = Convert(NVarChar(11), [nomin_2].[CargoId])
			WHERE
				([nomin_2].[DeliveryCounterParty] LIKE @cpty_3 ESCAPE N'~' OR [trade_2].[CounterParty] LIKE @cpty_4 ESCAPE N'~' OR [t2].[AlertCode] LIKE @cpty_5 ESCAPE N'~') AND
				[al_group_4].[AlertKey] = [t2].[AlertKey] AND
				[al_group_4].[AlertCode] = [t2].[AlertCode] AND
				[al_group_4].[CreationDate] = [t2].[CreationDate]
		) [t3]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Flat]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Nomin]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Trade]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [AuditAlert]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Alert]

