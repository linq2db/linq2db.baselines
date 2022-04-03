BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Key_1]
FROM
	(
		SELECT
			DatePart('yyyy', [selectParam].[DateTimeValue]) as [Key_1]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

