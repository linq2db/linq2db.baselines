-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[ContractNumber],
	Coalesce([transactionsTotals_1].[amount1], 0) - Coalesce([supplementTotal_1].[supplementAmount], 0),
	[transactionsTotals_1].[amount1],
	[transactionsTotals_1].[Amount2]
FROM
	[Table1_5328] [t1]
		LEFT JOIN (
			SELECT
				SUM([supplementTotal].[Amount]) as [supplementAmount],
				[supplementTotal].[LinkedId]
			FROM
				[Table2_5328] [supplementTotal]
			GROUP BY
				[supplementTotal].[ContractNumber],
				[supplementTotal].[LinkedId]
		) [supplementTotal_1] ON [supplementTotal_1].[LinkedId] = [t1].[Id]
		LEFT JOIN (
			SELECT
				SUM(CASE
					WHEN [transactionsTotals].[Type] = 'Type1' THEN [transactionsTotals].[Amount]
					ELSE NULL
				END) as [amount1],
				SUM(CASE
					WHEN [transactionsTotals].[Type] = 'Type2' THEN [transactionsTotals].[Amount]
					ELSE NULL
				END) as [Amount2],
				[transactionsTotals].[LinkedId]
			FROM
				[Table3_5328] [transactionsTotals]
			GROUP BY
				[transactionsTotals].[ContractNumber],
				[transactionsTotals].[LinkedId]
		) [transactionsTotals_1] ON [transactionsTotals_1].[LinkedId] = [t1].[Id]

