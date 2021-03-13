BeforeExecute
-- SqlServer.2016

SELECT
	DateAdd(month, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

