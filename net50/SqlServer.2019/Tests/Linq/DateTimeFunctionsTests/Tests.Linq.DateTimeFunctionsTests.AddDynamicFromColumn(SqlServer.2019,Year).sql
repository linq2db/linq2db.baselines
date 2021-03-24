BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	DateAdd(year, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

