BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t2].[c1],
	[t2].[c2]
FROM
	(
		SELECT
			MONTH([t1].[DateTimeValue]) as [c1],
			YEAR([t1].[DateTimeValue]) as [c2]
		FROM
			[LinqDataTypes] [t1]
	) [t2]
GROUP BY
	[t2].[c1],
	[t2].[c2]

