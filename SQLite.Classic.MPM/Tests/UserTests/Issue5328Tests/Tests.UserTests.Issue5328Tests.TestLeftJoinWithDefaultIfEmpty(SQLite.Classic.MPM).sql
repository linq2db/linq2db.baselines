-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t2].[Id],
	[t2].[ContractNumber],
	Coalesce([t2].[amount1], 0) - Coalesce((
		SELECT
			SUM([supplementTotal].[Amount])
		FROM
			[Table2_5328] [supplementTotal]
		WHERE
			[supplementTotal].[LinkedId] = [t2].[Id]
		GROUP BY
			[supplementTotal].[ContractNumber]
	), 0),
	[t2].[amount1],
	[t2].[Amount2]
FROM
	(
		SELECT
			[t1].[Id],
			[t1].[ContractNumber],
			(
				SELECT
					SUM(CASE
						WHEN [transactionsTotals].[Type] = 'Type1' THEN [transactionsTotals].[Amount]
						ELSE NULL
					END)
				FROM
					[Table3_5328] [transactionsTotals]
				WHERE
					[transactionsTotals].[LinkedId] = [t1].[Id]
				GROUP BY
					[transactionsTotals].[ContractNumber]
			) as [amount1],
			(
				SELECT
					SUM(CASE
						WHEN [transactionsTotals_1].[Type] = 'Type2' THEN [transactionsTotals_1].[Amount]
						ELSE NULL
					END)
				FROM
					[Table3_5328] [transactionsTotals_1]
				WHERE
					[transactionsTotals_1].[LinkedId] = [t1].[Id]
				GROUP BY
					[transactionsTotals_1].[ContractNumber]
			) as [Amount2]
		FROM
			[Table1_5328] [t1]
	) [t2]

