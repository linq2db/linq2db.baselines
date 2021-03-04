BeforeExecute
-- SqlServer.2005

SELECT
	DateAdd(week, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

