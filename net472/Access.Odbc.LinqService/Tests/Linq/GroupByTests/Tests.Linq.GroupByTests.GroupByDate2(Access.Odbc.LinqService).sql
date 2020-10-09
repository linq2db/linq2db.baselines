BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	Sum([t1].[MoneyValue]), 
	[t1].[c2], 
	[t1].[c1]
FROM
	( 
		SELECT 
			DatePart('m', [selectParam].[DateTimeValue]) as [c1], 
			DatePart('yyyy', [selectParam].[DateTimeValue]) as [c2], 
			[selectParam].[MoneyValue]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1],
	[t1].[c2]

