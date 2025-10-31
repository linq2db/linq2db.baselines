BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Int([p].[MoneyValue] * (10 ^ 1) + IIF([p].[MoneyValue] >= 0, 0.5, -0.5)) / (10 ^ 1) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0

