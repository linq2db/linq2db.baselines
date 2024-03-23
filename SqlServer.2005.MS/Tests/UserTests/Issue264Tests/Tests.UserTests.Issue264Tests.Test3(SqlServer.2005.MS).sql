BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[_1].[c1]
FROM
	(
		SELECT
			MONTH([_].[DateTimeValue]) as [c1]
		FROM
			[LinqDataTypes] [_]
	) [_1]
GROUP BY
	[_1].[c1]

