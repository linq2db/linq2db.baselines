BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	DateAdd(year, Convert(Float, [t].[SmallIntValue]), [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

