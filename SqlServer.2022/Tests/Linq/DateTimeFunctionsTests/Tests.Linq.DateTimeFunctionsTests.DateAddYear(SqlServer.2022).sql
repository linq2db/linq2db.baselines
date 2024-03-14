BeforeExecute
-- SqlServer.2022

SELECT
	Convert(Date, DateAdd(year, 11, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

