BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Cast(Floor(Cast(DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue]) as Float)) as DateTime)
FROM
	[LinqDataTypes] [t]

