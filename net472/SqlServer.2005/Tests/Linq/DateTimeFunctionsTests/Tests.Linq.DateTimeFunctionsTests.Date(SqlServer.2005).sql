BeforeExecute
-- SqlServer.2005

SELECT 
	Cast(Floor(Cast([t].[DateTimeValue] as Float)) as DateTime)
FROM
	[LinqDataTypes] [t]

