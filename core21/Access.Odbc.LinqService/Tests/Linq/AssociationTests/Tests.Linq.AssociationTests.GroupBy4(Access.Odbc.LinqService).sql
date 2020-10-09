BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[t1].[c1]
FROM
	( 
		SELECT 
			DatePart('yyyy', [selectParam].[DateTimeValue]) as [c1]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1]

