BeforeExecute
-- SqlServer.2008

SELECT
	DateAdd(day, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

