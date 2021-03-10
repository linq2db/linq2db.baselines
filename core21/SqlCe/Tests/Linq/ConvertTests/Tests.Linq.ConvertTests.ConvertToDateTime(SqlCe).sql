BeforeExecute
-- SqlCe

SELECT
	[p].[c1]
FROM
	(
		SELECT
			Convert(DateTime, Convert(NVarChar(11), DatePart(year, [t].[DateTimeValue])) + '-01-01 00:00:00') as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	DatePart(day, [p].[c1]) > 0

