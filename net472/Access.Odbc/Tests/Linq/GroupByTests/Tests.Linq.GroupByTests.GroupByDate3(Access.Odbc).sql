BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Sum([t1].[MoneyValue]),
	DatePart('yyyy', [t1].[Key_1]),
	DatePart('m', [t1].[Key_1])
FROM
	(
		SELECT
			DateSerial(DatePart('yyyy', [selectParam].[DateTimeValue]), DatePart('m', [selectParam].[DateTimeValue]), 1) as [Key_1],
			[selectParam].[MoneyValue]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

