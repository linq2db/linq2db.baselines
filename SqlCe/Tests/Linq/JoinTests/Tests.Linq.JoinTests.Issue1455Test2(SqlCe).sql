BeforeExecute
-- SqlCe

DROP TABLE [Alert]

BeforeExecute
-- SqlCe

CREATE TABLE [Alert]
(
	[AlertKey]     NVarChar(255) NOT NULL,
	[AlertCode]    NVarChar(255) NOT NULL,
	[CreationDate] DateTime      NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [AuditAlert]

BeforeExecute
-- SqlCe

CREATE TABLE [AuditAlert]
(
	[AlertKey]        NVarChar(255) NOT NULL,
	[AlertCode]       NVarChar(255) NOT NULL,
	[CreationDate]    DateTime      NOT NULL,
	[TransactionDate] DateTime          NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Trade]

BeforeExecute
-- SqlCe

CREATE TABLE [Trade]
(
	[DealId]       Int           NOT NULL,
	[ParcelId]     Int           NOT NULL,
	[CounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Nomin]

BeforeExecute
-- SqlCe

CREATE TABLE [Nomin]
(
	[CargoId]              Int           NOT NULL,
	[DeliveryId]           Int           NOT NULL,
	[DeliveryCounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Flat]

BeforeExecute
-- SqlCe

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

BeforeExecute
-- SqlCe
DECLARE @DeliveryCounterParty NVarChar(3) -- String
SET     @DeliveryCounterParty = '%C%'

SELECT
	[al_group_3].[AlertKey],
	[al_group_3].[AlertCode],
	[t3].[LastUpdate_1] as [LastUpdate],
	[t3].[CargoId],
	[t3].[DeliveryId],
	[t3].[DeliveryCounterParty],
	[t3].[DealId],
	[t3].[ParcelId],
	[t3].[CounterParty],
	[t3].[LastUpdate] as [LastUpdate_1]
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
				Coalesce([t1].[MAX_1], [t2].[CreationDate]) as [LastUpdate],
				Coalesce([t1].[MAX_1], [t2].[CreationDate]) as [LastUpdate_1]
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
				) [t2]
					OUTER APPLY (
						SELECT
							MAX([au_2].[TransactionDate]) as [MAX_1]
						FROM
							[Alert] [al]
								LEFT JOIN [AuditAlert] [au_2] ON [au_2].[AlertKey] = [al].[AlertKey] AND [au_2].[AlertCode] = [au_2].[AlertCode]
						WHERE
							[t2].[AlertKey] = [al].[AlertKey] AND [t2].[AlertCode] = [al].[AlertCode] AND
							[t2].[CreationDate] = [al].[CreationDate]
					) [t1]
					LEFT JOIN [Trade] [trade_2] ON [t2].[AlertKey] = Convert(NVarChar(11), [trade_2].[DealId])
					LEFT JOIN [Nomin] [nomin_2] ON [t2].[AlertKey] = Convert(NVarChar(11), [nomin_2].[CargoId])
			WHERE
				([nomin_2].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_2].[CounterParty] LIKE @DeliveryCounterParty OR [t2].[AlertCode] LIKE @DeliveryCounterParty) AND
				[al_group_3].[AlertKey] = [t2].[AlertKey] AND
				[al_group_3].[AlertCode] = [t2].[AlertCode] AND
				[al_group_3].[CreationDate] = [t2].[CreationDate]
		) [t3]

BeforeExecute
-- SqlCe

DROP TABLE [Flat]

BeforeExecute
-- SqlCe

DROP TABLE [Nomin]

BeforeExecute
-- SqlCe

DROP TABLE [Trade]

BeforeExecute
-- SqlCe

DROP TABLE [AuditAlert]

BeforeExecute
-- SqlCe

DROP TABLE [Alert]

