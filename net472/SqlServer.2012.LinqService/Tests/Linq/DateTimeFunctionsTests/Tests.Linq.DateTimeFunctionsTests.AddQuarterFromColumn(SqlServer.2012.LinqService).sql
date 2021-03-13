BeforeExecute
-- SqlServer.2012

SELECT
	DateAdd(quarter, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

