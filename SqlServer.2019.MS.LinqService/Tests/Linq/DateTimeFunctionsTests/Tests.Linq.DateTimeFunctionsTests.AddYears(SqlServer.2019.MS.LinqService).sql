BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	Convert(Date, DateAdd(year, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

