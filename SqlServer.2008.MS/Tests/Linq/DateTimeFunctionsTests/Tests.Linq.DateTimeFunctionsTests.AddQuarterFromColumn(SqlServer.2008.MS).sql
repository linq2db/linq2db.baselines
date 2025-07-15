BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST(DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

