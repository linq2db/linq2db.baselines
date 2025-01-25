BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t2].[c1]
FROM
	(
		SELECT
			MONTH([t1].[DateTimeValue]) as [c1]
		FROM
			[LinqDataTypes] [t1]
	) [t2]
GROUP BY
	[t2].[c1]

