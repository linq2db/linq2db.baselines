BeforeExecute
-- SqlServer.2005

SELECT
	DateAdd(hour, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

