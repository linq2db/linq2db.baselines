BeforeExecute
-- SqlServer.2017

SELECT
	DateAdd(day, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

