BeforeExecute
-- SqlServer.2017

CREATE TABLE [Alert]
(
	[AlertKey]     NVarChar(4000)     NULL,
	[AlertCode]    NVarChar(4000)     NULL,
	[CreationDate] DateTime           NULL
)

BeforeExecute
-- SqlServer.2017

CREATE TABLE [AuditAlert]
(
	[CreationDate]    DateTime           NULL,
	[AlertCode]       NVarChar(4000)     NULL,
	[AlertKey]        NVarChar(4000)     NULL,
	[TransactionDate] DateTime           NULL
)

BeforeExecute
-- SqlServer.2017

CREATE TABLE [Trade]
(
	[DealId]       Int            NOT NULL,
	[ParcelId]     Int            NOT NULL,
	[CounterParty] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2017

CREATE TABLE [Nomin]
(
	[CargoId]              Int            NOT NULL,
	[DeliveryId]           Int            NOT NULL,
	[DeliveryCounterParty] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2017

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
-- SqlServer.2017

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
		LEFT JOIN [Trade] [trade1] ON ([al_1].[alert] = Convert(NVarChar(11), [trade1].[DealId]) OR [al_1].[alert] IS NULL AND Convert(NVarChar(11), [trade1].[DealId]) IS NULL)
		LEFT JOIN [Nomin] [nomin1] ON ([al_1].[alert] = Convert(NVarChar(11), [nomin1].[CargoId]) OR [al_1].[alert] IS NULL AND Convert(NVarChar(11), [nomin1].[CargoId]) IS NULL)
WHERE
	((Lower([nomin1].[DeliveryCounterParty]) LIKE N'%c%' ESCAPE N'~' OR Lower([trade1].[CounterParty]) LIKE N'%c%' ESCAPE N'~') OR Lower([al_1].[alert_1]) LIKE N'%c%' ESCAPE N'~')
GROUP BY
	[al_1].[alert],
	[al_1].[alert_1],
	[al_1].[alert_2]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Flat]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Nomin]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Trade]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [AuditAlert]

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Alert]

