BeforeExecute
-- SqlServer.2008

SELECT
	DateAdd(hour, [t].[SmallIntValue], [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

