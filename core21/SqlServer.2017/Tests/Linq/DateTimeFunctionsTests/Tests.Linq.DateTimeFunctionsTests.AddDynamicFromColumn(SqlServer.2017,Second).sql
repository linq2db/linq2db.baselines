BeforeExecute
-- SqlServer.2017

SELECT
	DateAdd(second, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

