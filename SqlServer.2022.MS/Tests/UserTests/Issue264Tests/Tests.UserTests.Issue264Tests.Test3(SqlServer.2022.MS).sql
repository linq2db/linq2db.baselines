BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t2].[Key_1]
FROM
	(
		SELECT
			MONTH([t1].[DateTimeValue]) as [Key_1]
		FROM
			[LinqDataTypes] [t1]
	) [t2]
GROUP BY
	[t2].[Key_1]

