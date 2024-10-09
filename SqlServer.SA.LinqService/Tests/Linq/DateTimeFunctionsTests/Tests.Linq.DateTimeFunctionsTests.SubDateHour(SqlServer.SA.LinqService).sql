BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	CAST(DateDiff(hour, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS Int)
FROM
	[LinqDataTypes] [t]

