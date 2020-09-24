BeforeExecute
-- SqlCe

SELECT
	Sum([t1].[MoneyValue]),
	DatePart(year, [t1].[c1]),
	DatePart(month, [t1].[c1])
FROM
	(
		SELECT
			Convert(Datetime, Convert(NVarChar(11), DatePart(year, [selectParam].[DateTimeValue])) + '-' + Convert(NVarChar(11), DatePart(month, [selectParam].[DateTimeValue])) + '-1') as [c1],
			[selectParam].[MoneyValue]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1]

