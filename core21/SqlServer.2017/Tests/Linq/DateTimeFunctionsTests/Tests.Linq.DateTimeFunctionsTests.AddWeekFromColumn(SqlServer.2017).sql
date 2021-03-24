BeforeExecute
-- SqlServer.2017

SELECT
	DateAdd(week, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

