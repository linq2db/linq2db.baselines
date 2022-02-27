BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	Sum([t1].[MoneyValue]),
	DatePart(year, [t1].[c1]),
	DatePart(month, [t1].[c1])
FROM
	(
		SELECT
			DateAdd(month, ((DatePart(year, [selectParam].[DateTimeValue]) - 1900) * 12 + DatePart(month, [selectParam].[DateTimeValue])) - 1, 0) as [c1],
			[selectParam].[MoneyValue]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1]

