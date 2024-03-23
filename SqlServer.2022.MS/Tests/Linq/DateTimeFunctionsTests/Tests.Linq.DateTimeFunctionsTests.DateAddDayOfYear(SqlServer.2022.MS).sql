BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	Convert(Date, DateAdd(dayofyear, 3, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

