BeforeExecute
-- SqlServer.2016

SELECT
	[_1].[c1],
	[_1].[c2]
FROM
	(
		SELECT
			MONTH([_].[DateTimeValue]) as [c1],
			YEAR([_].[DateTimeValue]) as [c2]
		FROM
			[LinqDataTypes] [_]
	) [_1]
GROUP BY
	[_1].[c1],
	[_1].[c2]

