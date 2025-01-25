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
						LEFT JOIN [AuditAlert] [au_1] ON ([au_1].[AlertKey] = [al_group_2].[AlertKey])
				GROUP BY
					[al_group_2].[AlertKey],
					[al_group_2].[AlertCode],
					[al_group_2].[CreationDate]
			) [t1]
				LEFT JOIN [Trade] [trade_2] ON ([t1].[AlertKey] = CStr([trade_2].[DealId])))
				LEFT JOIN [Nomin] [nomin_2] ON ([t1].[AlertKey] = CStr([nomin_2].[CargoId]))
		WHERE
			([nomin_2].[DeliveryCounterParty] LIKE @DeliveryCounterParty OR [trade_2].[CounterParty] LIKE @DeliveryCounterParty_1 OR [t1].[AlertCode] LIKE @DeliveryCounterParty_2) AND
			[al_group_1].[AlertKey] = [t1].[AlertKey] AND
			[al_group_1].[AlertCode] = [t1].[AlertCode] AND
			[al_group_1].[CreationDate] = [t1].[CreationDate]
	),
	(
		SELECT TOP 1
			[nomin_3].[CargoId]
		FROM
			((
				SELECT
					[al_group_3].[AlertKey],
					[al_group_3].[AlertCode],
					[al_group_3].[CreationDate]
				FROM
					[Alert] [al_group_3]
						LEFT JOIN [AuditAlert] [au_2] ON ([au_2].[AlertKey] = [al_group_3].[AlertKey])
				GROUP BY
					[al_group_3].[AlertKey],
					[al_group_3].[AlertCode],
					[al_group_3].[CreationDate]
			) [t2]
				LEFT JOIN [Trade] [trade_3] ON ([t2].[AlertKey] = CStr([trade_3].[DealId])))
				LEFT JOIN [Nomin] [nomin_3] ON ([t2].[AlertKey] = CStr([nomin_3].[CargoId]))
		WHERE
			([nomin_3].[DeliveryCounterParty] LIKE @DeliveryCounterParty_3 OR [trade_3].[CounterParty] LIKE @DeliveryCounterParty_4 OR [t2].[AlertCode] LIKE @DeliveryCounterParty_5) AND
			[al_group_1].[AlertKey] = [t2].[AlertKey] AND
			[al_group_1].[AlertCode] = [t2].[AlertCode] AND
			[al_group_1].[CreationDate] = [t2].[CreationDate]
	),
	(
		SELECT TOP 1
			[nomin_4].[DeliveryId]
		FROM
			((
				SELECT
					[al_group_4].[AlertKey],
					[al_group_4].[AlertCode],
					[al_group_4].[CreationDate]
				FROM
					[Alert] [al_group_4]
						LEFT JOIN [AuditAlert] [au_3] ON ([au_3].[AlertKey] = [al_group_4].[AlertKey])
				GROUP BY
					[al_group_4].[AlertKey],
					[al_group_4].[AlertCode],
					[al_group_4].[CreationDate]
			) [t3]
				LEFT JOIN [Trade] [trade_4] ON ([t3].[AlertKey] = CStr([trade_4].[DealId])))
				LEFT JOIN [Nomin] [nomin_4] ON ([t3].[AlertKey] = CStr([nomin_4].[CargoId]))
		WHERE
			([nomin_4].[DeliveryCounterParty] LIKE @DeliveryCounterParty_6 OR [trade_4].[CounterParty] LIKE @DeliveryCounterParty_7 OR [t3].[AlertCode] LIKE @DeliveryCounterParty_8) AND
			[al_group_1].[AlertKey] = [t3].[AlertKey] AND
			[al_group_1].[AlertCode] = [t3].[AlertCode] AND
			[al_group_1].[CreationDate] = [t3].[CreationDate]
	),
	(
		SELECT TOP 1
			[nomin_5].[DeliveryCounterParty]
		FROM
			((
				SELECT
					[al_group_5].[AlertKey],
					[al_group_5].[AlertCode],
					[al_group_5].[CreationDate]
				FROM
					[Alert] [al_group_5]
						LEFT JOIN [AuditAlert] [au_4] ON ([au_4].[AlertKey] = [al_group_5].[AlertKey])
				GROUP BY
					[al_group_5].[AlertKey],
					[al_group_5].[AlertCode],
					[al_group_5].[CreationDate]
			) [t4]
				LEFT JOIN [Trade] [trade_5] ON ([t4].[AlertKey] = CStr([trade_5].[DealId])))
				LEFT JOIN [Nomin] [nomin_5] ON ([t4].[AlertKey] = CStr([nomin_5].[CargoId]))
		WHERE
			([nomin_5].[DeliveryCounterParty] LIKE @DeliveryCounterParty_9 OR [trade_5].[CounterParty] LIKE @DeliveryCounterParty_10 OR [t4].[AlertCode] LIKE @DeliveryCounterParty_11) AND
			[al_group_1].[AlertKey] = [t4].[AlertKey] AND
			[al_group_1].[AlertCode] = [t4].[AlertCode] AND
			[al_group_1].[CreationDate] = [t4].[CreationDate]
	),
	(
		SELECT TOP 1
			[trade_6].[DealId]
		FROM
			((
				SELECT
					[al_group_6].[AlertKey],
					[al_group_6].[AlertCode],
					[al_group_6].[CreationDate]
				FROM
					[Alert] [al_group_6]
						LEFT JOIN [AuditAlert] [au_5] ON ([au_5].[AlertKey] = [al_group_6].[AlertKey])
				GROUP BY
					[al_group_6].[AlertKey],
					[al_group_6].[AlertCode],
					[al_group_6].[CreationDate]
			) [t5]
				LEFT JOIN [Trade] [trade_6] ON ([t5].[AlertKey] = CStr([trade_6].[DealId])))
				LEFT JOIN [Nomin] [nomin_6] ON ([t5].[AlertKey] = CStr([nomin_6].[CargoId]))
		WHERE
			([nomin_6].[DeliveryCounterParty] LIKE @DeliveryCounterParty_12 OR [trade_6].[CounterParty] LIKE @DeliveryCounterParty_13 OR [t5].[AlertCode] LIKE @DeliveryCounterParty_14) AND
			[al_group_1].[AlertKey] = [t5].[AlertKey] AND
			[al_group_1].[AlertCode] = [t5].[AlertCode] AND
			[al_group_1].[CreationDate] = [t5].[CreationDate]
	),
	(
		SELECT TOP 1
			[trade_7].[ParcelId]
		FROM
			((
				SELECT
					[al_group_7].[AlertKey],
					[al_group_7].[AlertCode],
					[al_group_7].[CreationDate]
				FROM
					[Alert] [al_group_7]
						LEFT JOIN [AuditAlert] [au_6] ON ([au_6].[AlertKey] = [al_group_7].[AlertKey])
				GROUP BY
					[al_group_7].[AlertKey],
					[al_group_7].[AlertCode],
					[al_group_7].[CreationDate]
			) [t6]
				LEFT JOIN [Trade] [trade_7] ON ([t6].[AlertKey] = CStr([trade_7].[DealId])))
				LEFT JOIN [Nomin] [nomin_7] ON ([t6].[AlertKey] = CStr([nomin_7].[CargoId]))
		WHERE
			([nomin_7].[DeliveryCounterParty] LIKE @DeliveryCounterParty_15 OR [trade_7].[CounterParty] LIKE @DeliveryCounterParty_16 OR [t6].[AlertCode] LIKE @DeliveryCounterParty_17) AND
			[al_group_1].[AlertKey] = [t6].[AlertKey] AND
			[al_group_1].[AlertCode] = [t6].[AlertCode] AND
			[al_group_1].[CreationDate] = [t6].[CreationDate]
	),
	(
		SELECT TOP 1
			[trade_8].[CounterParty]
		FROM
			((
				SELECT
					[al_group_8].[AlertKey],
					[al_group_8].[AlertCode],
					[al_group_8].[CreationDate]
				FROM
					[Alert] [al_group_8]
						LEFT JOIN [AuditAlert] [au_7] ON ([au_7].[AlertKey] = [al_group_8].[AlertKey])
				GROUP BY
					[al_group_8].[AlertKey],
					[al_group_8].[AlertCode],
					[al_group_8].[CreationDate]
			) [t7]
				LEFT JOIN [Trade] [trade_8] ON ([t7].[AlertKey] = CStr([trade_8].[DealId])))
				LEFT JOIN [Nomin] [nomin_8] ON ([t7].[AlertKey] = CStr([nomin_8].[CargoId]))
		WHERE
			([nomin_8].[DeliveryCounterParty] LIKE @DeliveryCounterParty_18 OR [trade_8].[CounterParty] LIKE @DeliveryCounterParty_19 OR [t7].[AlertCode] LIKE @DeliveryCounterParty_20) AND
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
						LEFT JOIN [AuditAlert] [au_8] ON ([au_8].[AlertKey] = [al_group_9].[AlertKey])
				GROUP BY
					[al_group_9].[AlertKey],
					[al_group_9].[AlertCode],
					[al_group_9].[CreationDate]
			) [t8]
				LEFT JOIN [Trade] [trade_9] ON ([t8].[AlertKey] = CStr([trade_9].[DealId])))
				LEFT JOIN [Nomin] [nomin_9] ON ([t8].[AlertKey] = CStr([nomin_9].[CargoId]))
		WHERE
			([nomin_9].[DeliveryCounterParty] LIKE @DeliveryCounterParty_21 OR [trade_9].[CounterParty] LIKE @DeliveryCounterParty_22 OR [t8].[AlertCode] LIKE @DeliveryCounterParty_23) AND
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
				LEFT JOIN [AuditAlert] [au] ON ([au].[AlertKey] = [al_group].[AlertKey])
		GROUP BY
			[al_group].[AlertKey],
			[al_group].[AlertCode],
			[al_group].[CreationDate]
	) [al_group_1]
		LEFT JOIN [Trade] [trade_1] ON ([al_group_1].[AlertKey] = CStr([trade_1].[DealId])))
		LEFT JOIN [Nomin] [nomin_1] ON ([al_group_1].[AlertKey] = CStr([nomin_1].[CargoId]))
WHERE
	([nomin_1].[DeliveryCounterParty] LIKE @DeliveryCounterParty_24 OR [trade_1].[CounterParty] LIKE @DeliveryCounterParty_25 OR [al_group_1].[AlertCode] LIKE @DeliveryCounterParty_26)
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

