BeforeExecute
-- SqlServer.2019 SqlServer.2017

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

