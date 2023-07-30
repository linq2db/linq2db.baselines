BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	Convert(DateTime, Convert(VarChar(11), DatePart(year, [t].[DateTimeValue])) + N'-01-01 00:20:00')
FROM
	[LinqDataTypes] [t]

