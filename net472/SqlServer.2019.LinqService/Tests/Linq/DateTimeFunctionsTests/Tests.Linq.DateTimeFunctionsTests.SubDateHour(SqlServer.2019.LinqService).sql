BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	DateDiff(hour, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

