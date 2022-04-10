BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Key_1]
FROM
	(
		SELECT
			MONTH([selectParam].[DateTimeValue]) as [Key_1]
		FROM
			[LinqDataTypes] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

