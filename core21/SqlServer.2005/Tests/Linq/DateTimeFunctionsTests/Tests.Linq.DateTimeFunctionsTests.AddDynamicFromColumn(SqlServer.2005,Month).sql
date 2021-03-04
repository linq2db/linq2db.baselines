BeforeExecute
-- SqlServer.2005

SELECT
	DateAdd(month, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

