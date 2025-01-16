﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Alert]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Alert]
(
	[AlertKey]     NVarChar(255) NOT NULL,
	[AlertCode]    NVarChar(255) NOT NULL,
	[CreationDate] DateTime      NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [AuditAlert]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [AuditAlert]
(
	[AlertKey]        NVarChar(255) NOT NULL,
	[AlertCode]       NVarChar(255) NOT NULL,
	[CreationDate]    DateTime      NOT NULL,
	[TransactionDate] DateTime          NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Trade]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Trade]
(
	[DealId]       Int           NOT NULL,
	[ParcelId]     Int           NOT NULL,
	[CounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Nomin]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Nomin]
(
	[CargoId]              Int           NOT NULL,
	[DeliveryId]           Int           NOT NULL,
	[DeliveryCounterParty] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Flat]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

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
-- Access.Ace.OleDb AccessOleDb
DECLARE @cond VarWChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond_1 VarWChar(3) -- String
SET     @cond_1 = '%C%'
DECLARE @cond_2 VarWChar(3) -- String
SET     @cond_2 = '%C%'
DECLARE @cond_3 VarWChar(3) -- String
SET     @cond_3 = '%C%'
DECLARE @cond_4 VarWChar(3) -- String
SET     @cond_4 = '%C%'
DECLARE @cond_5 VarWChar(3) -- String
SET     @cond_5 = '%C%'
DECLARE @cond_6 VarWChar(3) -- String
SET     @cond_6 = '%C%'
DECLARE @cond_7 VarWChar(3) -- String
SET     @cond_7 = '%C%'
DECLARE @cond_8 VarWChar(3) -- String
SET     @cond_8 = '%C%'
DECLARE @cond_9 VarWChar(3) -- String
SET     @cond_9 = '%C%'
DECLARE @cond_10 VarWChar(3) -- String
SET     @cond_10 = '%C%'
DECLARE @cond_11 VarWChar(3) -- String
SET     @cond_11 = '%C%'
DECLARE @cond_12 VarWChar(3) -- String
SET     @cond_12 = '%C%'
DECLARE @cond_13 VarWChar(3) -- String
SET     @cond_13 = '%C%'
DECLARE @cond_14 VarWChar(3) -- String
SET     @cond_14 = '%C%'
DECLARE @cond_15 VarWChar(3) -- String
SET     @cond_15 = '%C%'
DECLARE @cond_16 VarWChar(3) -- String
SET     @cond_16 = '%C%'
DECLARE @cond_17 VarWChar(3) -- String
SET     @cond_17 = '%C%'
DECLARE @cond_18 VarWChar(3) -- String
SET     @cond_18 = '%C%'
DECLARE @cond_19 VarWChar(3) -- String
SET     @cond_19 = '%C%'
DECLARE @cond_20 VarWChar(3) -- String
SET     @cond_20 = '%C%'
DECLARE @cond_21 VarWChar(3) -- String
SET     @cond_21 = '%C%'
DECLARE @cond_22 VarWChar(3) -- String
SET     @cond_22 = '%C%'
DECLARE @cond_23 VarWChar(3) -- String
SET     @cond_23 = '%C%'

SELECT
	[al_group_2].[AlertKey],
	[al_group_2].[AlertCode],
	(
		SELECT TOP 1
			IIF([t1].[MAX_1] IS NULL, [t1].[CreationDate], [t1].[MAX_1])
		FROM
			((
				SELECT
					[al_group_3].[AlertCode],
					[al_group_3].[AlertKey],
					[al_group_3].[CreationDate],
					MAX([au_1].[TransactionDate]) as [MAX_1]
				FROM
					[Alert] [al_group_3]
						LEFT JOIN [AuditAlert] [au_1] ON ([au_1].[AlertKey] = [al_group_3].[AlertKey])
				GROUP BY
					[al_group_3].[AlertKey],
					[al_group_3].[AlertCode],
					[al_group_3].[CreationDate]
			) [t1]
				LEFT JOIN [Trade] [trade_2] ON ([t1].[AlertKey] = IIF([trade_2].[DealId] IS NOT NULL, CStr([trade_2].[DealId]), NULL)))
				LEFT JOIN [Nomin] [nomin_2] ON ([t1].[AlertKey] = IIF([nomin_2].[CargoId] IS NOT NULL, CStr([nomin_2].[CargoId]), NULL))
		WHERE
			([nomin_2].[DeliveryCounterParty] LIKE @cond OR [trade_2].[CounterParty] LIKE @cond_1 OR [t1].[AlertCode] LIKE @cond_2) AND
			[al_group_2].[AlertKey] = [t1].[AlertKey] AND
			[al_group_2].[AlertCode] = [t1].[AlertCode] AND
			[al_group_2].[CreationDate] = [t1].[CreationDate]
	),
	(
		SELECT TOP 1
			[nomin_3].[CargoId]
		FROM
			((
				SELECT
					[al_group_4].[AlertCode],
					[al_group_4].[AlertKey],
					[al_group_4].[CreationDate],
					MAX([au_2].[TransactionDate]) as [MAX_1]
				FROM
					[Alert] [al_group_4]
						LEFT JOIN [AuditAlert] [au_2] ON ([au_2].[AlertKey] = [al_group_4].[AlertKey])
				GROUP BY
					[al_group_4].[AlertKey],
					[al_group_4].[AlertCode],
					[al_group_4].[CreationDate]
			) [t2]
				LEFT JOIN [Trade] [trade_3] ON ([t2].[AlertKey] = IIF([trade_3].[DealId] IS NOT NULL, CStr([trade_3].[DealId]), NULL)))
				LEFT JOIN [Nomin] [nomin_3] ON ([t2].[AlertKey] = IIF([nomin_3].[CargoId] IS NOT NULL, CStr([nomin_3].[CargoId]), NULL))
		WHERE
			([nomin_3].[DeliveryCounterParty] LIKE @cond_3 OR [trade_3].[CounterParty] LIKE @cond_4 OR [t2].[AlertCode] LIKE @cond_5) AND
			[al_group_2].[AlertKey] = [t2].[AlertKey] AND
			[al_group_2].[AlertCode] = [t2].[AlertCode] AND
			[al_group_2].[CreationDate] = [t2].[CreationDate]
	),
	(
		SELECT TOP 1
			[nomin_4].[DeliveryId]
		FROM
			((
				SELECT
					[al_group_5].[AlertCode],
					[al_group_5].[AlertKey],
					[al_group_5].[CreationDate],
					MAX([au_3].[TransactionDate]) as [MAX_1]
				FROM
					[Alert] [al_group_5]
						LEFT JOIN [AuditAlert] [au_3] ON ([au_3].[AlertKey] = [al_group_5].[AlertKey])
				GROUP BY
					[al_group_5].[AlertKey],
					[al_group_5].[AlertCode],
					[al_group_5].[CreationDate]
			) [t3]
				LEFT JOIN [Trade] [trade_4] ON ([t3].[AlertKey] = IIF([trade_4].[DealId] IS NOT NULL, CStr([trade_4].[DealId]), NULL)))
				LEFT JOIN [Nomin] [nomin_4] ON ([t3].[AlertKey] = IIF([nomin_4].[CargoId] IS NOT NULL, CStr([nomin_4].[CargoId]), NULL))
		WHERE
			([nomin_4].[DeliveryCounterParty] LIKE @cond_6 OR [trade_4].[CounterParty] LIKE @cond_7 OR [t3].[AlertCode] LIKE @cond_8) AND
			[al_group_2].[AlertKey] = [t3].[AlertKey] AND
			[al_group_2].[AlertCode] = [t3].[AlertCode] AND
			[al_group_2].[CreationDate] = [t3].[CreationDate]
	),
	(
		SELECT TOP 1
			[nomin_5].[DeliveryCounterParty]
		FROM
			((
				SELECT
					[al_group_6].[AlertCode],
					[al_group_6].[AlertKey],
					[al_group_6].[CreationDate],
					MAX([au_4].[TransactionDate]) as [MAX_1]
				FROM
					[Alert] [al_group_6]
						LEFT JOIN [AuditAlert] [au_4] ON ([au_4].[AlertKey] = [al_group_6].[AlertKey])
				GROUP BY
					[al_group_6].[AlertKey],
					[al_group_6].[AlertCode],
					[al_group_6].[CreationDate]
			) [t4]
				LEFT JOIN [Trade] [trade_5] ON ([t4].[AlertKey] = IIF([trade_5].[DealId] IS NOT NULL, CStr([trade_5].[DealId]), NULL)))
				LEFT JOIN [Nomin] [nomin_5] ON ([t4].[AlertKey] = IIF([nomin_5].[CargoId] IS NOT NULL, CStr([nomin_5].[CargoId]), NULL))
		WHERE
			([nomin_5].[DeliveryCounterParty] LIKE @cond_9 OR [trade_5].[CounterParty] LIKE @cond_10 OR [t4].[AlertCode] LIKE @cond_11) AND
			[al_group_2].[AlertKey] = [t4].[AlertKey] AND
			[al_group_2].[AlertCode] = [t4].[AlertCode] AND
			[al_group_2].[CreationDate] = [t4].[CreationDate]
	),
	(
		SELECT TOP 1
			[trade_6].[DealId]
		FROM
			((
				SELECT
					[al_group_7].[AlertCode],
					[al_group_7].[AlertKey],
					[al_group_7].[CreationDate],
					MAX([au_5].[TransactionDate]) as [MAX_1]
				FROM
					[Alert] [al_group_7]
						LEFT JOIN [AuditAlert] [au_5] ON ([au_5].[AlertKey] = [al_group_7].[AlertKey])
				GROUP BY
					[al_group_7].[AlertKey],
					[al_group_7].[AlertCode],
					[al_group_7].[CreationDate]
			) [t5]
				LEFT JOIN [Trade] [trade_6] ON ([t5].[AlertKey] = IIF([trade_6].[DealId] IS NOT NULL, CStr([trade_6].[DealId]), NULL)))
				LEFT JOIN [Nomin] [nomin_6] ON ([t5].[AlertKey] = IIF([nomin_6].[CargoId] IS NOT NULL, CStr([nomin_6].[CargoId]), NULL))
		WHERE
			([nomin_6].[DeliveryCounterParty] LIKE @cond_12 OR [trade_6].[CounterParty] LIKE @cond_13 OR [t5].[AlertCode] LIKE @cond_14) AND
			[al_group_2].[AlertKey] = [t5].[AlertKey] AND
			[al_group_2].[AlertCode] = [t5].[AlertCode] AND
			[al_group_2].[CreationDate] = [t5].[CreationDate]
	),
	(
		SELECT TOP 1
			[trade_7].[ParcelId]
		FROM
			((
				SELECT
					[al_group_8].[AlertCode],
					[al_group_8].[AlertKey],
					[al_group_8].[CreationDate],
					MAX([au_6].[TransactionDate]) as [MAX_1]
				FROM
					[Alert] [al_group_8]
						LEFT JOIN [AuditAlert] [au_6] ON ([au_6].[AlertKey] = [al_group_8].[AlertKey])
				GROUP BY
					[al_group_8].[AlertKey],
					[al_group_8].[AlertCode],
					[al_group_8].[CreationDate]
			) [t6]
				LEFT JOIN [Trade] [trade_7] ON ([t6].[AlertKey] = IIF([trade_7].[DealId] IS NOT NULL, CStr([trade_7].[DealId]), NULL)))
				LEFT JOIN [Nomin] [nomin_7] ON ([t6].[AlertKey] = IIF([nomin_7].[CargoId] IS NOT NULL, CStr([nomin_7].[CargoId]), NULL))
		WHERE
			([nomin_7].[DeliveryCounterParty] LIKE @cond_15 OR [trade_7].[CounterParty] LIKE @cond_16 OR [t6].[AlertCode] LIKE @cond_17) AND
			[al_group_2].[AlertKey] = [t6].[AlertKey] AND
			[al_group_2].[AlertCode] = [t6].[AlertCode] AND
			[al_group_2].[CreationDate] = [t6].[CreationDate]
	),
	(
		SELECT TOP 1
			[trade_8].[CounterParty]
		FROM
			((
				SELECT
					[al_group_9].[AlertCode],
					[al_group_9].[AlertKey],
					[al_group_9].[CreationDate],
					MAX([au_7].[TransactionDate]) as [MAX_1]
				FROM
					[Alert] [al_group_9]
						LEFT JOIN [AuditAlert] [au_7] ON ([au_7].[AlertKey] = [al_group_9].[AlertKey])
				GROUP BY
					[al_group_9].[AlertKey],
					[al_group_9].[AlertCode],
					[al_group_9].[CreationDate]
			) [t7]
				LEFT JOIN [Trade] [trade_8] ON ([t7].[AlertKey] = IIF([trade_8].[DealId] IS NOT NULL, CStr([trade_8].[DealId]), NULL)))
				LEFT JOIN [Nomin] [nomin_8] ON ([t7].[AlertKey] = IIF([nomin_8].[CargoId] IS NOT NULL, CStr([nomin_8].[CargoId]), NULL))
		WHERE
			([nomin_8].[DeliveryCounterParty] LIKE @cond_18 OR [trade_8].[CounterParty] LIKE @cond_19 OR [t7].[AlertCode] LIKE @cond_20) AND
			[al_group_2].[AlertKey] = [t7].[AlertKey] AND
			[al_group_2].[AlertCode] = [t7].[AlertCode] AND
			[al_group_2].[CreationDate] = [t7].[CreationDate]
	)
FROM
	(
		SELECT
			[al_group_1].[AlertKey],
			[al_group_1].[AlertCode],
			[al_group_1].[CreationDate]
		FROM
			((
				SELECT
					[al_group].[AlertCode],
					[al_group].[AlertKey],
					[al_group].[CreationDate]
				FROM
					[Alert] [al_group]
						LEFT JOIN [AuditAlert] [au] ON ([au].[AlertKey] = [al_group].[AlertKey])
				GROUP BY
					[al_group].[AlertKey],
					[al_group].[AlertCode],
					[al_group].[CreationDate]
			) [al_group_1]
				LEFT JOIN [Trade] [trade_1] ON ([al_group_1].[AlertKey] = IIF([trade_1].[DealId] IS NOT NULL, CStr([trade_1].[DealId]), NULL)))
				LEFT JOIN [Nomin] [nomin_1] ON ([al_group_1].[AlertKey] = IIF([nomin_1].[CargoId] IS NOT NULL, CStr([nomin_1].[CargoId]), NULL))
		WHERE
			[nomin_1].[DeliveryCounterParty] LIKE @cond_21 OR [trade_1].[CounterParty] LIKE @cond_22 OR
			[al_group_1].[AlertCode] LIKE @cond_23
		GROUP BY
			[al_group_1].[AlertKey],
			[al_group_1].[AlertCode],
			[al_group_1].[CreationDate]
	) [al_group_2]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Flat]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Nomin]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Trade]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [AuditAlert]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Alert]

