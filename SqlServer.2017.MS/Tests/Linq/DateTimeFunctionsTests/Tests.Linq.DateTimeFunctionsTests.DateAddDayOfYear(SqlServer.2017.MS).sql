BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	Convert(Date, DateAdd(dayofyear, 3, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

