BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	DateAdd(day, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

