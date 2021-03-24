BeforeExecute
-- SqlServer.2016

SELECT
	DateAdd(second, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

