BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[c1]
FROM
	(
		SELECT
			IIF(-[p].[MoneyValue] >= 0, Int(-[p].[MoneyValue]), -Int([p].[MoneyValue])) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	[t].[c1] <> 0.10000000000000001

