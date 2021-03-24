BeforeExecute
-- SqlServer.2017

SELECT
	DateAdd(minute, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

