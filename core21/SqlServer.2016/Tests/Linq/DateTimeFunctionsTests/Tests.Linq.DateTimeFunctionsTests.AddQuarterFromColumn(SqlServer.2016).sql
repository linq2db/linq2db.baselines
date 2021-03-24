BeforeExecute
-- SqlServer.2016

SELECT
	DateAdd(quarter, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

