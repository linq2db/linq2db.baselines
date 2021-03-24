BeforeExecute
-- SqlServer.2017

SELECT
	DateAdd(quarter, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

