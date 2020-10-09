BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Iif([p].[MoneyValue] * 10 - Int([p].[MoneyValue] * 10) = 0.5 AND Int([p].[MoneyValue] * 10) MOD 2 = 0, -Int(-([p].[MoneyValue] * 10)), Round([p].[MoneyValue] * 10, 0)) / 10 as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] <> 0 OR [t].[c1] IS NULL) AND ([t].[c1] <> 7 OR [t].[c1] IS NULL)

