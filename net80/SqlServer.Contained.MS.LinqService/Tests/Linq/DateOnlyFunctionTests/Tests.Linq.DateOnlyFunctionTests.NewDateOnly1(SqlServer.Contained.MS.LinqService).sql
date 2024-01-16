BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t].[c1]
FROM
	(
		SELECT
			Convert(Date, format(DatePart(year, [p].[DateTimeValue]), 'd4') + N'-10-01') as [c1]
		FROM
			[LinqDataTypes] [p]
	) [t]
WHERE
	DatePart(month, [t].[c1]) = 10

