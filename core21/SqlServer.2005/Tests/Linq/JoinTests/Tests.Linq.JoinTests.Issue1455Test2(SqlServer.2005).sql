BeforeExecute
-- SqlServer.2005

CREATE TABLE [Alert]
(
	[AlertKey]     NVarChar(4000)     NULL,
	[AlertCode]    NVarChar(4000)     NULL,
	[CreationDate] DateTime           NULL
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [AuditAlert]
(
	[CreationDate]    DateTime           NULL,
	[AlertCode]       NVarChar(4000)     NULL,
	[AlertKey]        NVarChar(4000)     NULL,
	[TransactionDate] DateTime           NULL
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [Trade]
(
	[DealId]       Int            NOT NULL,
	[ParcelId]     Int            NOT NULL,
	[CounterParty] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [Nomin]
(
	[CargoId]              Int            NOT NULL,
	[DeliveryId]           Int            NOT NULL,
	[DeliveryCounterParty] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2005

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

DROP TABLE [Flat]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Nomin]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Trade]

BeforeExecute
-- SqlServer.2005

DROP TABLE [AuditAlert]

BeforeExecute
-- SqlServer.2005

DROP TABLE [Alert]

