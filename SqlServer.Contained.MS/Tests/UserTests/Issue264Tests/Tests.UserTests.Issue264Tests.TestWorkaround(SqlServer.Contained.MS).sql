BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	Count(*)
FROM
	(
		SELECT
			1 as [c1]
		FROM
			[LinqDataTypes] [t1]
		GROUP BY
			MONTH([t1].[DateTimeValue]),
			YEAR([t1].[DateTimeValue])
	) [t2]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

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

