BeforeExecute
-- SqlCe

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Datetime, REPLICATE('0', 4 - LEN(CAST((DatePart(year, [p].[DateTimeValue]) + 1) as NVARCHAR(4)))) + CAST((DatePart(year, [p].[DateTimeValue]) + 1) as NVARCHAR(4)) + '-10-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(month, [t].[c1]) = 10

