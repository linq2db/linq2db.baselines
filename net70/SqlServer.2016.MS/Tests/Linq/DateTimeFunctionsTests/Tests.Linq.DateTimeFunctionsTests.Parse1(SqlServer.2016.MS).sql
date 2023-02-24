BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[d].[c1]
FROM
	(
		SELECT
			[t].[DateTimeValue] as [c1]
		FROM
			[LinqDataTypes] [t]
	) [d]
WHERE
	DatePart(day, [d].[c1]) > 0

