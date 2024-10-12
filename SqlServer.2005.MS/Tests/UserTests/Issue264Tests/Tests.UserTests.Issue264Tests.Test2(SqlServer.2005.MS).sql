BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t2].[Key_1],
	[t2].[Key_2]
FROM
	(
		SELECT
			MONTH([t1].[DateTimeValue]) as [Key_1],
			YEAR([t1].[DateTimeValue]) as [Key_2]
		FROM
			[LinqDataTypes] [t1]
	) [t2]
GROUP BY
	[t2].[Key_1],
	[t2].[Key_2]

