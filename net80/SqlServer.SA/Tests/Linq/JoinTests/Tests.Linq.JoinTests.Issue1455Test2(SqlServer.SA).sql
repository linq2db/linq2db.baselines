BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Alert]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Alert]', N'U') IS NULL)
	CREATE TABLE [Alert]
	(
		[AlertKey]     NVarChar(4000)     NULL,
		[AlertCode]    NVarChar(4000)     NULL,
		[CreationDate] DateTime2          NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [AuditAlert]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[AuditAlert]', N'U') IS NULL)
	CREATE TABLE [AuditAlert]
	(
		[AlertKey]        NVarChar(4000)     NULL,
		[AlertCode]       NVarChar(4000)     NULL,
		[CreationDate]    DateTime2          NULL,
		[TransactionDate] DateTime2          NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Trade]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Trade]', N'U') IS NULL)
	CREATE TABLE [Trade]
	(
		[DealId]       Int            NOT NULL,
		[ParcelId]     Int            NOT NULL,
		[CounterParty] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Nomin]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Nomin]', N'U') IS NULL)
	CREATE TABLE [Nomin]
	(
		[CargoId]              Int            NOT NULL,
		[DeliveryId]           Int            NOT NULL,
		[DeliveryCounterParty] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Flat]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019
DECLARE @DeliveryCounterParty NVarChar(4000) -- String
SET     @DeliveryCounterParty = N'%C%'

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
	(([nomin1].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade1].[CounterParty] LIKE @DeliveryCounterParty) OR [al_1].[alert_1] LIKE @DeliveryCounterParty)
GROUP BY
	[al_1].[alert],
	[al_1].[alert_1],
	[al_1].[alert_2]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Flat]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Nomin]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Trade]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [AuditAlert]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Alert]

