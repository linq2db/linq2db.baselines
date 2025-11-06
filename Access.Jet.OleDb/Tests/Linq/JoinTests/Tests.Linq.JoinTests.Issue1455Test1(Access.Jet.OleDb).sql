-- Access.Jet.OleDb AccessOleDb
DECLARE @cpty VarWChar(3) -- String
SET     @cpty = '%C%'
DECLARE @cpty_1 VarWChar(3) -- String
SET     @cpty_1 = '%C%'
DECLARE @cpty_2 VarWChar(3) -- String
SET     @cpty_2 = '%C%'
DECLARE @cpty_3 VarWChar(3) -- String
SET     @cpty_3 = '%C%'
DECLARE @cpty_4 VarWChar(3) -- String
SET     @cpty_4 = '%C%'
DECLARE @cpty_5 VarWChar(3) -- String
SET     @cpty_5 = '%C%'
DECLARE @cpty_6 VarWChar(3) -- String
SET     @cpty_6 = '%C%'
DECLARE @cpty_7 VarWChar(3) -- String
SET     @cpty_7 = '%C%'
DECLARE @cpty_8 VarWChar(3) -- String
SET     @cpty_8 = '%C%'
DECLARE @cpty_9 VarWChar(3) -- String
SET     @cpty_9 = '%C%'
DECLARE @cpty_10 VarWChar(3) -- String
SET     @cpty_10 = '%C%'
DECLARE @cpty_11 VarWChar(3) -- String
SET     @cpty_11 = '%C%'
DECLARE @cpty_12 VarWChar(3) -- String
SET     @cpty_12 = '%C%'
DECLARE @cpty_13 VarWChar(3) -- String
SET     @cpty_13 = '%C%'
DECLARE @cpty_14 VarWChar(3) -- String
SET     @cpty_14 = '%C%'
DECLARE @cpty_15 VarWChar(3) -- String
SET     @cpty_15 = '%C%'
DECLARE @cpty_16 VarWChar(3) -- String
SET     @cpty_16 = '%C%'
DECLARE @cpty_17 VarWChar(3) -- String
SET     @cpty_17 = '%C%'
DECLARE @cpty_18 VarWChar(3) -- String
SET     @cpty_18 = '%C%'
DECLARE @cpty_19 VarWChar(3) -- String
SET     @cpty_19 = '%C%'
DECLARE @cpty_20 VarWChar(3) -- String
SET     @cpty_20 = '%C%'
DECLARE @cpty_21 VarWChar(3) -- String
SET     @cpty_21 = '%C%'
DECLARE @cpty_22 VarWChar(3) -- String
SET     @cpty_22 = '%C%'
DECLARE @cpty_23 VarWChar(3) -- String
SET     @cpty_23 = '%C%'

SELECT
	[al_group_2].[AlertKey],
	[al_group_2].[AlertCode],
	(
		SELECT TOP 1
			[t1].[LastUpdate]
		FROM
			((
				SELECT
					[al_group_3].[AlertKey],
					[al_group_3].[AlertCode],
					[al_group_3].[CreationDate],
					IIF(MAX([au_1].[TransactionDate]) IS NULL, [al_group_3].[CreationDate], MAX([au_1].[TransactionDate])) as [LastUpdate]
				FROM
					[Alert] [al_group_3]
						LEFT JOIN [AuditAlert] [au_1] ON ([au_1].[AlertKey] = [al_group_3].[AlertKey])
				GROUP BY
					[al_group_3].[AlertKey],
					[al_group_3].[AlertCode],
					[al_group_3].[CreationDate]
			) [t1]
				LEFT JOIN [Trade] [trade_2] ON ([t1].[AlertKey] = CStr([trade_2].[DealId])))
				LEFT JOIN [Nomin] [nomin_2] ON ([t1].[AlertKey] = CStr([nomin_2].[CargoId]))
		WHERE
			([nomin_2].[DeliveryCounterParty] LIKE @cpty OR [trade_2].[CounterParty] LIKE @cpty_1 OR [t1].[AlertCode] LIKE @cpty_2) AND
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
					[al_group_4].[AlertKey],
					[al_group_4].[AlertCode],
					[al_group_4].[CreationDate],
					IIF(MAX([au_2].[TransactionDate]) IS NULL, [al_group_4].[CreationDate], MAX([au_2].[TransactionDate])) as [LastUpdate]
				FROM
					[Alert] [al_group_4]
						LEFT JOIN [AuditAlert] [au_2] ON ([au_2].[AlertKey] = [al_group_4].[AlertKey])
				GROUP BY
					[al_group_4].[AlertKey],
					[al_group_4].[AlertCode],
					[al_group_4].[CreationDate]
			) [t2]
				LEFT JOIN [Trade] [trade_3] ON ([t2].[AlertKey] = CStr([trade_3].[DealId])))
				LEFT JOIN [Nomin] [nomin_3] ON ([t2].[AlertKey] = CStr([nomin_3].[CargoId]))
		WHERE
			([nomin_3].[DeliveryCounterParty] LIKE @cpty_3 OR [trade_3].[CounterParty] LIKE @cpty_4 OR [t2].[AlertCode] LIKE @cpty_5) AND
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
					[al_group_5].[AlertKey],
					[al_group_5].[AlertCode],
					[al_group_5].[CreationDate],
					IIF(MAX([au_3].[TransactionDate]) IS NULL, [al_group_5].[CreationDate], MAX([au_3].[TransactionDate])) as [LastUpdate]
				FROM
					[Alert] [al_group_5]
						LEFT JOIN [AuditAlert] [au_3] ON ([au_3].[AlertKey] = [al_group_5].[AlertKey])
				GROUP BY
					[al_group_5].[AlertKey],
					[al_group_5].[AlertCode],
					[al_group_5].[CreationDate]
			) [t3]
				LEFT JOIN [Trade] [trade_4] ON ([t3].[AlertKey] = CStr([trade_4].[DealId])))
				LEFT JOIN [Nomin] [nomin_4] ON ([t3].[AlertKey] = CStr([nomin_4].[CargoId]))
		WHERE
			([nomin_4].[DeliveryCounterParty] LIKE @cpty_6 OR [trade_4].[CounterParty] LIKE @cpty_7 OR [t3].[AlertCode] LIKE @cpty_8) AND
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
					[al_group_6].[AlertKey],
					[al_group_6].[AlertCode],
					[al_group_6].[CreationDate],
					IIF(MAX([au_4].[TransactionDate]) IS NULL, [al_group_6].[CreationDate], MAX([au_4].[TransactionDate])) as [LastUpdate]
				FROM
					[Alert] [al_group_6]
						LEFT JOIN [AuditAlert] [au_4] ON ([au_4].[AlertKey] = [al_group_6].[AlertKey])
				GROUP BY
					[al_group_6].[AlertKey],
					[al_group_6].[AlertCode],
					[al_group_6].[CreationDate]
			) [t4]
				LEFT JOIN [Trade] [trade_5] ON ([t4].[AlertKey] = CStr([trade_5].[DealId])))
				LEFT JOIN [Nomin] [nomin_5] ON ([t4].[AlertKey] = CStr([nomin_5].[CargoId]))
		WHERE
			([nomin_5].[DeliveryCounterParty] LIKE @cpty_9 OR [trade_5].[CounterParty] LIKE @cpty_10 OR [t4].[AlertCode] LIKE @cpty_11) AND
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
					[al_group_7].[AlertKey],
					[al_group_7].[AlertCode],
					[al_group_7].[CreationDate],
					IIF(MAX([au_5].[TransactionDate]) IS NULL, [al_group_7].[CreationDate], MAX([au_5].[TransactionDate])) as [LastUpdate]
				FROM
					[Alert] [al_group_7]
						LEFT JOIN [AuditAlert] [au_5] ON ([au_5].[AlertKey] = [al_group_7].[AlertKey])
				GROUP BY
					[al_group_7].[AlertKey],
					[al_group_7].[AlertCode],
					[al_group_7].[CreationDate]
			) [t5]
				LEFT JOIN [Trade] [trade_6] ON ([t5].[AlertKey] = CStr([trade_6].[DealId])))
				LEFT JOIN [Nomin] [nomin_6] ON ([t5].[AlertKey] = CStr([nomin_6].[CargoId]))
		WHERE
			([nomin_6].[DeliveryCounterParty] LIKE @cpty_12 OR [trade_6].[CounterParty] LIKE @cpty_13 OR [t5].[AlertCode] LIKE @cpty_14) AND
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
					[al_group_8].[AlertKey],
					[al_group_8].[AlertCode],
					[al_group_8].[CreationDate],
					IIF(MAX([au_6].[TransactionDate]) IS NULL, [al_group_8].[CreationDate], MAX([au_6].[TransactionDate])) as [LastUpdate]
				FROM
					[Alert] [al_group_8]
						LEFT JOIN [AuditAlert] [au_6] ON ([au_6].[AlertKey] = [al_group_8].[AlertKey])
				GROUP BY
					[al_group_8].[AlertKey],
					[al_group_8].[AlertCode],
					[al_group_8].[CreationDate]
			) [t6]
				LEFT JOIN [Trade] [trade_7] ON ([t6].[AlertKey] = CStr([trade_7].[DealId])))
				LEFT JOIN [Nomin] [nomin_7] ON ([t6].[AlertKey] = CStr([nomin_7].[CargoId]))
		WHERE
			([nomin_7].[DeliveryCounterParty] LIKE @cpty_15 OR [trade_7].[CounterParty] LIKE @cpty_16 OR [t6].[AlertCode] LIKE @cpty_17) AND
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
					[al_group_9].[AlertKey],
					[al_group_9].[AlertCode],
					[al_group_9].[CreationDate],
					IIF(MAX([au_7].[TransactionDate]) IS NULL, [al_group_9].[CreationDate], MAX([au_7].[TransactionDate])) as [LastUpdate]
				FROM
					[Alert] [al_group_9]
						LEFT JOIN [AuditAlert] [au_7] ON ([au_7].[AlertKey] = [al_group_9].[AlertKey])
				GROUP BY
					[al_group_9].[AlertKey],
					[al_group_9].[AlertCode],
					[al_group_9].[CreationDate]
			) [t7]
				LEFT JOIN [Trade] [trade_8] ON ([t7].[AlertKey] = CStr([trade_8].[DealId])))
				LEFT JOIN [Nomin] [nomin_8] ON ([t7].[AlertKey] = CStr([nomin_8].[CargoId]))
		WHERE
			([nomin_8].[DeliveryCounterParty] LIKE @cpty_18 OR [trade_8].[CounterParty] LIKE @cpty_19 OR [t7].[AlertCode] LIKE @cpty_20) AND
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
			[nomin_1].[DeliveryCounterParty] LIKE @cpty_21 OR [trade_1].[CounterParty] LIKE @cpty_22 OR
			[al_group_1].[AlertCode] LIKE @cpty_23
		GROUP BY
			[al_group_1].[AlertKey],
			[al_group_1].[AlertCode],
			[al_group_1].[CreationDate]
	) [al_group_2]

