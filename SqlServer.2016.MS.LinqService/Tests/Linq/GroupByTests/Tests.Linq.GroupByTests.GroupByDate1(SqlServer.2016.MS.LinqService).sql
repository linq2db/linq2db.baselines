BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Sum([t1].[MoneyValue]),
	[t1].[Key_2],
	[t1].[Key_1]
FROM
	(
		SELECT
			DatePart(month, [selectParam].[DateTimeValue]) as [Key_1],
			DatePart(year, [selectParam].[DateTimeValue]) as [Key_2],
			[selectParam].[MoneyValue]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1],
	[t1].[Key_2]

