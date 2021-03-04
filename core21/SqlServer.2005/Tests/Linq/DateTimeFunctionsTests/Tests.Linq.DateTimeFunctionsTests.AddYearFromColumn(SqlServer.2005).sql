BeforeExecute
-- SqlServer.2005

SELECT
	DateAdd(year, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

