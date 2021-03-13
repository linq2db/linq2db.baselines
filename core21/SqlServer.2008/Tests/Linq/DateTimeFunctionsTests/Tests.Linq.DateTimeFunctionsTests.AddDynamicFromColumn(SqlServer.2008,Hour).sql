BeforeExecute
-- SqlServer.2008

SELECT
	DateAdd(hour, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

