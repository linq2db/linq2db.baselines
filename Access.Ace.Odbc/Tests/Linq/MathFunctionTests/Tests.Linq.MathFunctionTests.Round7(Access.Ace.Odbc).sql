-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[MoneyValue]
FROM
	[LinqDataTypes] [t]
WHERE
	IIF(ABS([t].[MoneyValue] * 10 MOD 10) = 5 AND ([t].[MoneyValue] MOD 2) = 2, [t].[MoneyValue], ROUND([t].[MoneyValue])) <> 0

