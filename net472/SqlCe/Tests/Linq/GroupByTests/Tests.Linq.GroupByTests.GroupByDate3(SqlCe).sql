BeforeExecute
-- SqlCe

SELECT
	Sum([t1].[MoneyValue]),
	DatePart(year, [t1].[Key_1]),
	DatePart(month, [t1].[Key_1])
FROM
	(
		SELECT
			Convert(Datetime, REPLICATE('0', 4 - LEN(CAST(DatePart(year, [selectParam].[DateTimeValue]) as NVARCHAR(4)))) + CAST(DatePart(year, [selectParam].[DateTimeValue]) as NVARCHAR(4)) + '-' + REPLICATE('0', 2 - LEN(CAST(DatePart(month, [selectParam].[DateTimeValue]) as NVARCHAR(2)))) + CAST(DatePart(month, [selectParam].[DateTimeValue]) as NVARCHAR(2)) + '-01') as [Key_1],
			[selectParam].[MoneyValue]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

