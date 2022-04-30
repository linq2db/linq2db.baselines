BeforeExecute
-- SqlServer.2012

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

