BeforeExecute
-- SqlCe

SELECT
	Sum([t1].[MoneyValue]),
	DatePart(year, [t1].[Key_1]),
	DatePart(month, [t1].[Key_1])
FROM
	(
		SELECT
			Convert(Datetime, Convert(NVarChar(100), DatePart(year, [selectParam].[DateTimeValue])) + '-' + Convert(NVarChar(100), DatePart(month, [selectParam].[DateTimeValue])) + '-1') as [Key_1],
			[selectParam].[MoneyValue]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

