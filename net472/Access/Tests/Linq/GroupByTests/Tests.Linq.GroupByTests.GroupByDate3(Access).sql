BeforeExecute
-- Access AccessOleDb

SELECT
	Sum([t1].[MoneyValue]),
	DatePart('yyyy', [t1].[c1]),
	DatePart('m', [t1].[c1])
FROM
	(
		SELECT
			DateSerial(DatePart('yyyy', [selectParam].[DateTimeValue]), DatePart('m', [selectParam].[DateTimeValue]), 1) as [c1],
			[selectParam].[MoneyValue]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1]

