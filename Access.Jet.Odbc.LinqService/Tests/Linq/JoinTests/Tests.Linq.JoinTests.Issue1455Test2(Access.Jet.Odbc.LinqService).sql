BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'
DECLARE @cond NVarChar(3) -- String
SET     @cond = '%C%'

SELECT
	[al_group_2].[Id],
	(
		SELECT TOP 1
			IIF([t1].[MAX_1] IS NULL, [t1].[CreationDate], [t1].[MAX_1])
		FROM
			((
				SELECT
					[al_group_3].[AlertCode],
					[al_group_3].[Id],
					MAX([au_1].[TransactionDate]) as [MAX_1],
					[al_group_3].[CreationDate],
					[al_group_3].[AlertKey]
				FROM
					[Alert] [al_group_3]
						LEFT JOIN [AuditAlert] [au_1] ON ([au_1].[AlertKey] = [al_group_3].[AlertKey])
				GROUP BY
					[al_group_3].[Id],
					[al_group_3].[AlertKey],
					[al_group_3].[AlertCode],
					[al_group_3].[CreationDate]
			) [t1]
				LEFT JOIN [Trade] [trade_2] ON ([t1].[AlertKey] = CStr([trade_2].[DealId])))
				LEFT JOIN [Nomin] [nomin_2] ON ([t1].[AlertKey] = CStr([nomin_2].[CargoId]))
		WHERE
			([nomin_2].[DeliveryCounterParty] LIKE ? OR [trade_2].[CounterParty] LIKE ? OR [t1].[AlertCode] LIKE ?) AND
			[al_group_2].[Id] = [t1].[Id]
	),
	(
		SELECT TOP 1
			[nomin_3].[CargoId]
		FROM
			((
				SELECT
					[al_group_4].[AlertCode],
					[al_group_4].[Id],
					MAX([au_2].[TransactionDate]) as [MAX_1],
					[al_group_4].[CreationDate],
					[al_group_4].[AlertKey]
				FROM
					[Alert] [al_group_4]
						LEFT JOIN [AuditAlert] [au_2] ON ([au_2].[AlertKey] = [al_group_4].[AlertKey])
				GROUP BY
					[al_group_4].[Id],
					[al_group_4].[AlertKey],
					[al_group_4].[AlertCode],
					[al_group_4].[CreationDate]
			) [t2]
				LEFT JOIN [Trade] [trade_3] ON ([t2].[AlertKey] = CStr([trade_3].[DealId])))
				LEFT JOIN [Nomin] [nomin_3] ON ([t2].[AlertKey] = CStr([nomin_3].[CargoId]))
		WHERE
			([nomin_3].[DeliveryCounterParty] LIKE ? OR [trade_3].[CounterParty] LIKE ? OR [t2].[AlertCode] LIKE ?) AND
			[al_group_2].[Id] = [t2].[Id]
	),
	(
		SELECT TOP 1
			[nomin_4].[DeliveryId]
		FROM
			((
				SELECT
					[al_group_5].[AlertCode],
					[al_group_5].[Id],
					MAX([au_3].[TransactionDate]) as [MAX_1],
					[al_group_5].[CreationDate],
					[al_group_5].[AlertKey]
				FROM
					[Alert] [al_group_5]
						LEFT JOIN [AuditAlert] [au_3] ON ([au_3].[AlertKey] = [al_group_5].[AlertKey])
				GROUP BY
					[al_group_5].[Id],
					[al_group_5].[AlertKey],
					[al_group_5].[AlertCode],
					[al_group_5].[CreationDate]
			) [t3]
				LEFT JOIN [Trade] [trade_4] ON ([t3].[AlertKey] = CStr([trade_4].[DealId])))
				LEFT JOIN [Nomin] [nomin_4] ON ([t3].[AlertKey] = CStr([nomin_4].[CargoId]))
		WHERE
			([nomin_4].[DeliveryCounterParty] LIKE ? OR [trade_4].[CounterParty] LIKE ? OR [t3].[AlertCode] LIKE ?) AND
			[al_group_2].[Id] = [t3].[Id]
	),
	(
		SELECT TOP 1
			[nomin_5].[DeliveryCounterParty]
		FROM
			((
				SELECT
					[al_group_6].[AlertCode],
					[al_group_6].[Id],
					MAX([au_4].[TransactionDate]) as [MAX_1],
					[al_group_6].[CreationDate],
					[al_group_6].[AlertKey]
				FROM
					[Alert] [al_group_6]
						LEFT JOIN [AuditAlert] [au_4] ON ([au_4].[AlertKey] = [al_group_6].[AlertKey])
				GROUP BY
					[al_group_6].[Id],
					[al_group_6].[AlertKey],
					[al_group_6].[AlertCode],
					[al_group_6].[CreationDate]
			) [t4]
				LEFT JOIN [Trade] [trade_5] ON ([t4].[AlertKey] = CStr([trade_5].[DealId])))
				LEFT JOIN [Nomin] [nomin_5] ON ([t4].[AlertKey] = CStr([nomin_5].[CargoId]))
		WHERE
			([nomin_5].[DeliveryCounterParty] LIKE ? OR [trade_5].[CounterParty] LIKE ? OR [t4].[AlertCode] LIKE ?) AND
			[al_group_2].[Id] = [t4].[Id]
	),
	(
		SELECT TOP 1
			[trade_6].[DealId]
		FROM
			((
				SELECT
					[al_group_7].[AlertCode],
					[al_group_7].[Id],
					MAX([au_5].[TransactionDate]) as [MAX_1],
					[al_group_7].[CreationDate],
					[al_group_7].[AlertKey]
				FROM
					[Alert] [al_group_7]
						LEFT JOIN [AuditAlert] [au_5] ON ([au_5].[AlertKey] = [al_group_7].[AlertKey])
				GROUP BY
					[al_group_7].[Id],
					[al_group_7].[AlertKey],
					[al_group_7].[AlertCode],
					[al_group_7].[CreationDate]
			) [t5]
				LEFT JOIN [Trade] [trade_6] ON ([t5].[AlertKey] = CStr([trade_6].[DealId])))
				LEFT JOIN [Nomin] [nomin_6] ON ([t5].[AlertKey] = CStr([nomin_6].[CargoId]))
		WHERE
			([nomin_6].[DeliveryCounterParty] LIKE ? OR [trade_6].[CounterParty] LIKE ? OR [t5].[AlertCode] LIKE ?) AND
			[al_group_2].[Id] = [t5].[Id]
	),
	(
		SELECT TOP 1
			[trade_7].[ParcelId]
		FROM
			((
				SELECT
					[al_group_8].[AlertCode],
					[al_group_8].[Id],
					MAX([au_6].[TransactionDate]) as [MAX_1],
					[al_group_8].[CreationDate],
					[al_group_8].[AlertKey]
				FROM
					[Alert] [al_group_8]
						LEFT JOIN [AuditAlert] [au_6] ON ([au_6].[AlertKey] = [al_group_8].[AlertKey])
				GROUP BY
					[al_group_8].[Id],
					[al_group_8].[AlertKey],
					[al_group_8].[AlertCode],
					[al_group_8].[CreationDate]
			) [t6]
				LEFT JOIN [Trade] [trade_7] ON ([t6].[AlertKey] = CStr([trade_7].[DealId])))
				LEFT JOIN [Nomin] [nomin_7] ON ([t6].[AlertKey] = CStr([nomin_7].[CargoId]))
		WHERE
			([nomin_7].[DeliveryCounterParty] LIKE ? OR [trade_7].[CounterParty] LIKE ? OR [t6].[AlertCode] LIKE ?) AND
			[al_group_2].[Id] = [t6].[Id]
	),
	(
		SELECT TOP 1
			[trade_8].[CounterParty]
		FROM
			((
				SELECT
					[al_group_9].[AlertCode],
					[al_group_9].[Id],
					MAX([au_7].[TransactionDate]) as [MAX_1],
					[al_group_9].[CreationDate],
					[al_group_9].[AlertKey]
				FROM
					[Alert] [al_group_9]
						LEFT JOIN [AuditAlert] [au_7] ON ([au_7].[AlertKey] = [al_group_9].[AlertKey])
				GROUP BY
					[al_group_9].[Id],
					[al_group_9].[AlertKey],
					[al_group_9].[AlertCode],
					[al_group_9].[CreationDate]
			) [t7]
				LEFT JOIN [Trade] [trade_8] ON ([t7].[AlertKey] = CStr([trade_8].[DealId])))
				LEFT JOIN [Nomin] [nomin_8] ON ([t7].[AlertKey] = CStr([nomin_8].[CargoId]))
		WHERE
			([nomin_8].[DeliveryCounterParty] LIKE ? OR [trade_8].[CounterParty] LIKE ? OR [t7].[AlertCode] LIKE ?) AND
			[al_group_2].[Id] = [t7].[Id]
	)
FROM
	(
		SELECT
			[al_group_1].[Id]
		FROM
			((
				SELECT
					[al_group].[AlertCode],
					[al_group].[Id],
					[al_group].[AlertKey]
				FROM
					[Alert] [al_group]
						LEFT JOIN [AuditAlert] [au] ON ([au].[AlertKey] = [al_group].[AlertKey])
				GROUP BY
					[al_group].[Id],
					[al_group].[AlertKey],
					[al_group].[AlertCode]
			) [al_group_1]
				LEFT JOIN [Trade] [trade_1] ON ([al_group_1].[AlertKey] = CStr([trade_1].[DealId])))
				LEFT JOIN [Nomin] [nomin_1] ON ([al_group_1].[AlertKey] = CStr([nomin_1].[CargoId]))
		WHERE
			[nomin_1].[DeliveryCounterParty] LIKE ? OR [trade_1].[CounterParty] LIKE ? OR
			[al_group_1].[AlertCode] LIKE ?
		GROUP BY
			[al_group_1].[Id]
	) [al_group_2]

