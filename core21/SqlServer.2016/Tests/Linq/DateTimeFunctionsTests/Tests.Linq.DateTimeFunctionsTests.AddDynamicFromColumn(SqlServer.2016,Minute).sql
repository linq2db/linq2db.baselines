BeforeExecute
-- SqlServer.2016

SELECT
	DateAdd(minute, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

