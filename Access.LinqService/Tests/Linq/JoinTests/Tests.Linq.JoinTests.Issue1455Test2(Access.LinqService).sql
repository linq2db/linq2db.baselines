BeforeExecute
-- Access AccessOleDb

DROP TABLE [Alert]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Alert]
(
	[AlertKey]     NVarChar(255) NOT NULL,
	[AlertCode]    NVarChar(255) NOT NULL,
	[CreationDate] DateTime      NOT NULL
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [AuditAlert]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [AuditAlert]
(
	[AlertKey]        NVarChar(255) NOT NULL,
	[AlertCode]       NVarChar(255) NOT NULL,
	[CreationDate]    DateTime      NOT NULL,
	[TransactionDate] DateTime          NULL
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Trade]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Trade]
(
	[DealId]       Int           NOT NULL,
	[ParcelId]     Int           NOT NULL,
	[CounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Nomin]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Nomin]
(
	[CargoId]              Int           NOT NULL,
	[DeliveryId]           Int           NOT NULL,
	[DeliveryCounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Flat]

BeforeExecute
-- Access AccessOleDb

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
-- Access AccessOleDb
DECLARE @DeliveryCounterParty VarWChar(3) -- String
SET     @DeliveryCounterParty = '%C%'
DECLARE @DeliveryCounterParty_1 VarWChar(3) -- String
SET     @DeliveryCounterParty_1 = '%C%'
DECLARE @DeliveryCounterParty_2 VarWChar(3) -- String
SET     @DeliveryCounterParty_2 = '%C%'
DECLARE @DeliveryCounterParty_3 VarWChar(3) -- String
SET     @DeliveryCounterParty_3 = '%C%'
DECLARE @DeliveryCounterParty_4 VarWChar(3) -- String
SET     @DeliveryCounterParty_4 = '%C%'
DECLARE @DeliveryCounterParty_5 VarWChar(3) -- String
SET     @DeliveryCounterParty_5 = '%C%'
DECLARE @DeliveryCounterParty_6 VarWChar(3) -- String
SET     @DeliveryCounterParty_6 = '%C%'
DECLARE @DeliveryCounterParty_7 VarWChar(3) -- String
SET     @DeliveryCounterParty_7 = '%C%'
DECLARE @DeliveryCounterParty_8 VarWChar(3) -- String
SET     @DeliveryCounterParty_8 = '%C%'
DECLARE @DeliveryCounterParty_9 VarWChar(3) -- String
SET     @DeliveryCounterParty_9 = '%C%'
DECLARE @DeliveryCounterParty_10 VarWChar(3) -- String
SET     @DeliveryCounterParty_10 = '%C%'
DECLARE @DeliveryCounterParty_11 VarWChar(3) -- String
SET     @DeliveryCounterParty_11 = '%C%'
DECLARE @DeliveryCounterParty_12 VarWChar(3) -- String
SET     @DeliveryCounterParty_12 = '%C%'
DECLARE @DeliveryCounterParty_13 VarWChar(3) -- String
SET     @DeliveryCounterParty_13 = '%C%'
DECLARE @DeliveryCounterParty_14 VarWChar(3) -- String
SET     @DeliveryCounterParty_14 = '%C%'
DECLARE @DeliveryCounterParty_15 VarWChar(3) -- String
SET     @DeliveryCounterParty_15 = '%C%'
DECLARE @DeliveryCounterParty_16 VarWChar(3) -- String
SET     @DeliveryCounterParty_16 = '%C%'
DECLARE @DeliveryCounterParty_17 VarWChar(3) -- String
SET     @DeliveryCounterParty_17 = '%C%'
DECLARE @DeliveryCounterParty_18 VarWChar(3) -- String
SET     @DeliveryCounterParty_18 = '%C%'
DECLARE @DeliveryCounterParty_19 VarWChar(3) -- String
SET     @DeliveryCounterParty_19 = '%C%'
DECLARE @DeliveryCounterParty_20 VarWChar(3) -- String
SET     @DeliveryCounterParty_20 = '%C%'
DECLARE @DeliveryCounterParty_21 VarWChar(3) -- String
SET     @DeliveryCounterParty_21 = '%C%'
DECLARE @DeliveryCounterParty_22 VarWChar(3) -- String
SET     @DeliveryCounterParty_22 = '%C%'
DECLARE @DeliveryCounterParty_23 VarWChar(3) -- String
SET     @DeliveryCounterParty_23 = '%C%'
DECLARE @DeliveryCounterParty_24 VarWChar(3) -- String
SET     @DeliveryCounterParty_24 = '%C%'
DECLARE @DeliveryCounterParty_25 VarWChar(3) -- String
SET     @DeliveryCounterParty_25 = '%C%'
DECLARE @DeliveryCounterParty_26 VarWChar(3) -- String
SET     @DeliveryCounterParty_26 = '%C%'

SELECT
	[al_group_1].[AlertKey],
	[al_group_1].[AlertCode],
	(
		SELECT TOP 1
			IIF([t1].[MAX_1] IS NULL, [t1].[CreationDate], [t1].[MAX_1])
		FROM
			((
				SELECT
					[al_group_2].[AlertKey],
					[al_group_2].[AlertCode],
					[al_group_2].[CreationDate],
					MAX([au_1].[TransactionDate]) as [MAX_1]
				FROM
					[Alert] [al_group_2]
						LEFT JOIN [AuditAlert] [au_1] ON ([au_1].[AlertKey] = [al_group_2].[AlertKey] AND [au_1].[AlertCode] = [au_1].[AlertCode])
				GROUP BY
					[al_group_2].[AlertKey],
					[al_group_2].[AlertCode],
					[al_group_2].[CreationDate]
			) [t1]
				LEFT JOIN (
					SELECT
						[trade_3].[CounterParty],
						CStr([trade_3].[DealId]) as [c1]
					FROM
						[Trade] [trade_3]
				) [trade_4] ON ([t1].[AlertKey] = [trade_4].[c1]))
				LEFT JOIN (
					SELECT
						[nomin_3].[DeliveryCounterParty],
						CStr([nomin_3].[CargoId]) as [c1]
					FROM
						[Nomin] [nomin_3]
				) [nomin_4] ON ([t1].[AlertKey] = [nomin_4].[c1])
		WHERE
			([nomin_4].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_4].[CounterParty] LIKE @DeliveryCounterParty_1 OR [t1].[AlertCode] LIKE @DeliveryCounterParty_2) AND
			[al_group_1].[AlertKey] = [t1].[AlertKey] AND
			[al_group_1].[AlertCode] = [t1].[AlertCode] AND
			[al_group_1].[CreationDate] = [t1].[CreationDate]
	),
	(
		SELECT TOP 1
			[nomin_6].[CargoId]
		FROM
			((
				SELECT
					[al_group_3].[AlertKey],
					[al_group_3].[AlertCode],
					[al_group_3].[CreationDate],
					MAX([au_2].[TransactionDate]) as [MAX_1]
				FROM
					[Alert] [al_group_3]
						LEFT JOIN [AuditAlert] [au_2] ON ([au_2].[AlertKey] = [al_group_3].[AlertKey] AND [au_2].[AlertCode] = [au_2].[AlertCode])
				GROUP BY
					[al_group_3].[AlertKey],
					[al_group_3].[AlertCode],
					[al_group_3].[CreationDate]
			) [t2]
				LEFT JOIN (
					SELECT
						[trade_5].[CounterParty],
						CStr([trade_5].[DealId]) as [c1]
					FROM
						[Trade] [trade_5]
				) [trade_6] ON ([t2].[AlertKey] = [trade_6].[c1]))
				LEFT JOIN (
					SELECT
						[nomin_5].[DeliveryCounterParty],
						[nomin_5].[CargoId],
						CStr([nomin_5].[CargoId]) as [c1]
					FROM
						[Nomin] [nomin_5]
				) [nomin_6] ON ([t2].[AlertKey] = [nomin_6].[c1])
		WHERE
			([nomin_6].[DeliveryCounterParty] LIKE @DeliveryCounterParty_3 OR [trade_6].[CounterParty] LIKE @DeliveryCounterParty_4 OR [t2].[AlertCode] LIKE @DeliveryCounterParty_5) AND
			[al_group_1].[AlertKey] = [t2].[AlertKey] AND
			[al_group_1].[AlertCode] = [t2].[AlertCode] AND
			[al_group_1].[CreationDate] = [t2].[CreationDate]
	),
	(
		SELECT TOP 1
			[nomin_8].[DeliveryId]
		FROM
			((
				SELECT
					[al_group_4].[AlertKey],
					[al_group_4].[AlertCode],
					[al_group_4].[CreationDate],
					MAX([au_3].[TransactionDate]) as [MAX_1]
				FROM
					[Alert] [al_group_4]
						LEFT JOIN [AuditAlert] [au_3] ON ([au_3].[AlertKey] = [al_group_4].[AlertKey] AND [au_3].[AlertCode] = [au_3].[AlertCode])
				GROUP BY
					[al_group_4].[AlertKey],
					[al_group_4].[AlertCode],
					[al_group_4].[CreationDate]
			) [t3]
				LEFT JOIN (
					SELECT
						[trade_7].[CounterParty],
						CStr([trade_7].[DealId]) as [c1]
					FROM
						[Trade] [trade_7]
				) [trade_8] ON ([t3].[AlertKey] = [trade_8].[c1]))
				LEFT JOIN (
					SELECT
						[nomin_7].[DeliveryCounterParty],
						[nomin_7].[DeliveryId],
						CStr([nomin_7].[CargoId]) as [c1]
					FROM
						[Nomin] [nomin_7]
				) [nomin_8] ON ([t3].[AlertKey] = [nomin_8].[c1])
		WHERE
			([nomin_8].[DeliveryCounterParty] LIKE @DeliveryCounterParty_6 OR [trade_8].[CounterParty] LIKE @DeliveryCounterParty_7 OR [t3].[AlertCode] LIKE @DeliveryCounterParty_8) AND
			[al_group_1].[AlertKey] = [t3].[AlertKey] AND
			[al_group_1].[AlertCode] = [t3].[AlertCode] AND
			[al_group_1].[CreationDate] = [t3].[CreationDate]
	),
	(
		SELECT TOP 1
			[nomin_10].[DeliveryCounterParty]
		FROM
			((
				SELECT
					[al_group_5].[AlertKey],
					[al_group_5].[AlertCode],
					[al_group_5].[CreationDate],
					MAX([au_4].[TransactionDate]) as [MAX_1]
				FROM
					[Alert] [al_group_5]
						LEFT JOIN [AuditAlert] [au_4] ON ([au_4].[AlertKey] = [al_group_5].[AlertKey] AND [au_4].[AlertCode] = [au_4].[AlertCode])
				GROUP BY
					[al_group_5].[AlertKey],
					[al_group_5].[AlertCode],
					[al_group_5].[CreationDate]
			) [t4]
				LEFT JOIN (
					SELECT
						[trade_9].[CounterParty],
						CStr([trade_9].[DealId]) as [c1]
					FROM
						[Trade] [trade_9]
				) [trade_10] ON ([t4].[AlertKey] = [trade_10].[c1]))
				LEFT JOIN (
					SELECT
						[nomin_9].[DeliveryCounterParty],
						CStr([nomin_9].[CargoId]) as [c1]
					FROM
						[Nomin] [nomin_9]
				) [nomin_10] ON ([t4].[AlertKey] = [nomin_10].[c1])
		WHERE
			([nomin_10].[DeliveryCounterParty] LIKE @DeliveryCounterParty_9 OR [trade_10].[CounterParty] LIKE @DeliveryCounterParty_10 OR [t4].[AlertCode] LIKE @DeliveryCounterParty_11) AND
			[al_group_1].[AlertKey] = [t4].[AlertKey] AND
			[al_group_1].[AlertCode] = [t4].[AlertCode] AND
			[al_group_1].[CreationDate] = [t4].[CreationDate]
	),
	(
		SELECT TOP 1
			[trade_12].[DealId]
		FROM
			((
				SELECT
					[al_group_6].[AlertKey],
					[al_group_6].[AlertCode],
					[al_group_6].[CreationDate],
					MAX([au_5].[TransactionDate]) as [MAX_1]
				FROM
					[Alert] [al_group_6]
						LEFT JOIN [AuditAlert] [au_5] ON ([au_5].[AlertKey] = [al_group_6].[AlertKey] AND [au_5].[AlertCode] = [au_5].[AlertCode])
				GROUP BY
					[al_group_6].[AlertKey],
					[al_group_6].[AlertCode],
					[al_group_6].[CreationDate]
			) [t5]
				LEFT JOIN (
					SELECT
						[trade_11].[CounterParty],
						[trade_11].[DealId],
						CStr([trade_11].[DealId]) as [c1]
					FROM
						[Trade] [trade_11]
				) [trade_12] ON ([t5].[AlertKey] = [trade_12].[c1]))
				LEFT JOIN (
					SELECT
						[nomin_11].[DeliveryCounterParty],
						CStr([nomin_11].[CargoId]) as [c1]
					FROM
						[Nomin] [nomin_11]
				) [nomin_12] ON ([t5].[AlertKey] = [nomin_12].[c1])
		WHERE
			([nomin_12].[DeliveryCounterParty] LIKE @DeliveryCounterParty_12 OR [trade_12].[CounterParty] LIKE @DeliveryCounterParty_13 OR [t5].[AlertCode] LIKE @DeliveryCounterParty_14) AND
			[al_group_1].[AlertKey] = [t5].[AlertKey] AND
			[al_group_1].[AlertCode] = [t5].[AlertCode] AND
			[al_group_1].[CreationDate] = [t5].[CreationDate]
	),
	(
		SELECT TOP 1
			[trade_14].[ParcelId]
		FROM
			((
				SELECT
					[al_group_7].[AlertKey],
					[al_group_7].[AlertCode],
					[al_group_7].[CreationDate],
					MAX([au_6].[TransactionDate]) as [MAX_1]
				FROM
					[Alert] [al_group_7]
						LEFT JOIN [AuditAlert] [au_6] ON ([au_6].[AlertKey] = [al_group_7].[AlertKey] AND [au_6].[AlertCode] = [au_6].[AlertCode])
				GROUP BY
					[al_group_7].[AlertKey],
					[al_group_7].[AlertCode],
					[al_group_7].[CreationDate]
			) [t6]
				LEFT JOIN (
					SELECT
						[trade_13].[CounterParty],
						[trade_13].[ParcelId],
						CStr([trade_13].[DealId]) as [c1]
					FROM
						[Trade] [trade_13]
				) [trade_14] ON ([t6].[AlertKey] = [trade_14].[c1]))
				LEFT JOIN (
					SELECT
						[nomin_13].[DeliveryCounterParty],
						CStr([nomin_13].[CargoId]) as [c1]
					FROM
						[Nomin] [nomin_13]
				) [nomin_14] ON ([t6].[AlertKey] = [nomin_14].[c1])
		WHERE
			([nomin_14].[DeliveryCounterParty] LIKE @DeliveryCounterParty_15 OR [trade_14].[CounterParty] LIKE @DeliveryCounterParty_16 OR [t6].[AlertCode] LIKE @DeliveryCounterParty_17) AND
			[al_group_1].[AlertKey] = [t6].[AlertKey] AND
			[al_group_1].[AlertCode] = [t6].[AlertCode] AND
			[al_group_1].[CreationDate] = [t6].[CreationDate]
	),
	(
		SELECT TOP 1
			[trade_16].[CounterParty]
		FROM
			((
				SELECT
					[al_group_8].[AlertKey],
					[al_group_8].[AlertCode],
					[al_group_8].[CreationDate],
					MAX([au_7].[TransactionDate]) as [MAX_1]
				FROM
					[Alert] [al_group_8]
						LEFT JOIN [AuditAlert] [au_7] ON ([au_7].[AlertKey] = [al_group_8].[AlertKey] AND [au_7].[AlertCode] = [au_7].[AlertCode])
				GROUP BY
					[al_group_8].[AlertKey],
					[al_group_8].[AlertCode],
					[al_group_8].[CreationDate]
			) [t7]
				LEFT JOIN (
					SELECT
						[trade_15].[CounterParty],
						CStr([trade_15].[DealId]) as [c1]
					FROM
						[Trade] [trade_15]
				) [trade_16] ON ([t7].[AlertKey] = [trade_16].[c1]))
				LEFT JOIN (
					SELECT
						[nomin_15].[DeliveryCounterParty],
						CStr([nomin_15].[CargoId]) as [c1]
					FROM
						[Nomin] [nomin_15]
				) [nomin_16] ON ([t7].[AlertKey] = [nomin_16].[c1])
		WHERE
			([nomin_16].[DeliveryCounterParty] LIKE @DeliveryCounterParty_18 OR [trade_16].[CounterParty] LIKE @DeliveryCounterParty_19 OR [t7].[AlertCode] LIKE @DeliveryCounterParty_20) AND
			[al_group_1].[AlertKey] = [t7].[AlertKey] AND
			[al_group_1].[AlertCode] = [t7].[AlertCode] AND
			[al_group_1].[CreationDate] = [t7].[CreationDate]
	),
	(
		SELECT TOP 1
			IIF([t8].[MAX_1] IS NULL, [t8].[CreationDate], [t8].[MAX_1])
		FROM
			((
				SELECT
					[al_group_9].[AlertKey],
					[al_group_9].[AlertCode],
					[al_group_9].[CreationDate],
					MAX([au_8].[TransactionDate]) as [MAX_1]
				FROM
					[Alert] [al_group_9]
						LEFT JOIN [AuditAlert] [au_8] ON ([au_8].[AlertKey] = [al_group_9].[AlertKey] AND [au_8].[AlertCode] = [au_8].[AlertCode])
				GROUP BY
					[al_group_9].[AlertKey],
					[al_group_9].[AlertCode],
					[al_group_9].[CreationDate]
			) [t8]
				LEFT JOIN (
					SELECT
						[trade_17].[CounterParty],
						CStr([trade_17].[DealId]) as [c1]
					FROM
						[Trade] [trade_17]
				) [trade_18] ON ([t8].[AlertKey] = [trade_18].[c1]))
				LEFT JOIN (
					SELECT
						[nomin_17].[DeliveryCounterParty],
						CStr([nomin_17].[CargoId]) as [c1]
					FROM
						[Nomin] [nomin_17]
				) [nomin_18] ON ([t8].[AlertKey] = [nomin_18].[c1])
		WHERE
			([nomin_18].[DeliveryCounterParty] LIKE @DeliveryCounterParty_21 OR [trade_18].[CounterParty] LIKE @DeliveryCounterParty_22 OR [t8].[AlertCode] LIKE @DeliveryCounterParty_23) AND
			[al_group_1].[AlertKey] = [t8].[AlertKey] AND
			[al_group_1].[AlertCode] = [t8].[AlertCode] AND
			[al_group_1].[CreationDate] = [t8].[CreationDate]
	)
FROM
	((
		SELECT
			[al_group].[AlertKey],
			[al_group].[AlertCode],
			[al_group].[CreationDate]
		FROM
			[Alert] [al_group]
				LEFT JOIN [AuditAlert] [au] ON ([au].[AlertKey] = [al_group].[AlertKey] AND [au].[AlertCode] = [au].[AlertCode])
		GROUP BY
			[al_group].[AlertKey],
			[al_group].[AlertCode],
			[al_group].[CreationDate]
	) [al_group_1]
		LEFT JOIN (
			SELECT
				[trade_1].[CounterParty],
				CStr([trade_1].[DealId]) as [c1]
			FROM
				[Trade] [trade_1]
		) [trade_2] ON ([al_group_1].[AlertKey] = [trade_2].[c1]))
		LEFT JOIN (
			SELECT
				[nomin_1].[DeliveryCounterParty],
				CStr([nomin_1].[CargoId]) as [c1]
			FROM
				[Nomin] [nomin_1]
		) [nomin_2] ON ([al_group_1].[AlertKey] = [nomin_2].[c1])
WHERE
	([nomin_2].[DeliveryCounterParty] LIKE @DeliveryCounterParty_24 OR [trade_2].[CounterParty] LIKE @DeliveryCounterParty_25 OR [al_group_1].[AlertCode] LIKE @DeliveryCounterParty_26)
GROUP BY
	[al_group_1].[AlertKey],
	[al_group_1].[AlertCode],
	[al_group_1].[CreationDate]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Flat]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Nomin]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Trade]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [AuditAlert]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Alert]

