BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[t].[c1]
FROM
	( 
		SELECT 
			Iif([p].[MoneyValue] - Int([p].[MoneyValue]) = 0.5 AND Int([p].[MoneyValue]) MOD 2 = 0, -Int(-[p].[MoneyValue]), Round([p].[MoneyValue], 0)) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	([t].[c1] IS NULL OR [t].[c1] <> 0)

