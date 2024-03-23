BeforeExecute
-- SqlServer.2022

SELECT
	Convert(Date, DateAdd(month, -2, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

