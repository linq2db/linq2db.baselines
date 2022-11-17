BeforeExecute
-- SqlServer.2005

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(DateTime, format(DatePart(year, [p].[DateTimeValue]), 'd4') + N'-10-01 20:35:44', 120) as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(month, [t].[c1]) = 10

