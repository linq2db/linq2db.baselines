BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	Convert(SmallDateTime, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-01-01 00:20:00')
FROM
	[LinqDataTypes] [t]

