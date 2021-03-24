BeforeExecute
-- SqlServer.2012

SELECT
	DateAdd(week, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

