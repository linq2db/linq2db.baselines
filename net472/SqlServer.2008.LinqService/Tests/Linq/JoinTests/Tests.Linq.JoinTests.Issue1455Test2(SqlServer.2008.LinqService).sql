BeforeExecute
-- SqlServer.2008

CREATE TABLE [Alert]
(
	[AlertKey]     NVarChar(4000)     NULL,
	[AlertCode]    NVarChar(4000)     NULL,
	[CreationDate] DateTime           NULL
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [AuditAlert]
(
	[CreationDate]    DateTime           NULL,
	[AlertCode]       NVarChar(4000)     NULL,
	[AlertKey]        NVarChar(4000)     NULL,
	[TransactionDate] DateTime           NULL
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [Trade]
(
	[DealId]       Int            NOT NULL,
	[ParcelId]     Int            NOT NULL,
	[CounterParty] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2008

CREATE TABLE [Nomin]
(
	[CargoId]              Int            NOT NULL,
	[DeliveryId]           Int            NOT NULL,
	[DeliveryCounterParty] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008
DECLARE @p1 NVarChar(4000) -- String
SET     @p1 = N'%C%'
DECLARE @p2 NVarChar(4000) -- String
SET     @p2 = N'%C%'
DECLARE @p3 NVarChar(4000) -- String
SET     @p3 = N'%C%'

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
	(([nomin1].[DeliveryCounterParty] LIKE @p1 OR [trade1].[CounterParty] LIKE @p2) OR [al_1].[alert_1] LIKE @p3)
GROUP BY
	[al_1].[alert],
	[al_1].[alert_1],
	[al_1].[alert_2]

BeforeExecute
-- SqlServer.2008

DROP TABLE [Flat]

BeforeExecute
-- SqlServer.2008

DROP TABLE [Nomin]

BeforeExecute
-- SqlServer.2008

DROP TABLE [Trade]

BeforeExecute
-- SqlServer.2008

DROP TABLE [AuditAlert]

BeforeExecute
-- SqlServer.2008

DROP TABLE [Alert]

