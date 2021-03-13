BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	DateAdd(year, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

