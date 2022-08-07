BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Date, right(replicate('0',4) + cast((DatePart(year, [p].[DateTimeValue]) + 1) as varchar(255)),4) + '-10-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(month, [t].[c1]) = 10

