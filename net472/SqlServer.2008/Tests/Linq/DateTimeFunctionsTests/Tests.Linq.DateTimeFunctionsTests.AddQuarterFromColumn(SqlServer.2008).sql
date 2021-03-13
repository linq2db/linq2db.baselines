BeforeExecute
-- SqlServer.2008

SELECT
	DateAdd(quarter, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

