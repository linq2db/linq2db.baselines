BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	Sum([t1].[MoneyValue]),
	DatePart(year, [t1].[Key_1]),
	DatePart(month, [t1].[Key_1])
FROM
	(
		SELECT
			DateAdd(month, ((DatePart(year, [selectParam].[DateTimeValue]) - 1900) * 12 + DatePart(month, [selectParam].[DateTimeValue])) - 1, 0) as [Key_1],
			[selectParam].[MoneyValue]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

