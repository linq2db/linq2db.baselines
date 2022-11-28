BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Sum([t1].[MoneyValue]),
	DatePart(year, [t1].[Key_1]),
	DatePart(month, [t1].[Key_1])
FROM
	(
		SELECT
			Convert(Date, right(replicate('0',4) + cast(DatePart(year, [selectParam].[DateTimeValue]) as varchar(255)),4) + '-' + right(replicate('0',2) + cast(DatePart(month, [selectParam].[DateTimeValue]) as varchar(255)),2) + '-01') as [Key_1],
			[selectParam].[MoneyValue]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

