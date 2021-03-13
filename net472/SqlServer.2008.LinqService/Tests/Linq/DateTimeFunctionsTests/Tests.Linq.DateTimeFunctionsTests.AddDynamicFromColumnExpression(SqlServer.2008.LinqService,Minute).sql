BeforeExecute
-- SqlServer.2008

SELECT
	DateAdd(minute, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

