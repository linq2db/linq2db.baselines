-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			MONTH([t1].[DateTimeValue]) as [month_1],
			YEAR([t1].[DateTimeValue]) as [year_1]
		FROM
			[LinqDataTypes] [t1]
	) [t2]

-- SqlServer.2017.MS SqlServer.2017

SELECT DISTINCT
	MONTH([t1].[DateTimeValue]),
	YEAR([t1].[DateTimeValue])
FROM
	[LinqDataTypes] [t1]

