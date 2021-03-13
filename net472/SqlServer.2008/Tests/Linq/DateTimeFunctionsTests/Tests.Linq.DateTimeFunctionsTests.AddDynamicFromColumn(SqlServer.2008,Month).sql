BeforeExecute
-- SqlServer.2008

SELECT
	DateAdd(month, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

