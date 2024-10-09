BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS Int)
FROM
	[LinqDataTypes] [t]

