-- Access.Jet.Odbc AccessODBC

SELECT
	IIF([t3].[x] < 0, 9, [t3].[x] + 8),
	[t3].[x] + [t3].[x]
FROM
	(
		SELECT
			IIF([t2].[x] IS NULL, 0, [t2].[x]) as [x]
		FROM
			(
				SELECT
					(
						SELECT
							SUM([t1].[MoneyValue])
						FROM
							[LinqDataTypes] [t1]
					) as [x]
				FROM
					[LinqDataTypes] [q]
			) [t2]
	) [t3]

