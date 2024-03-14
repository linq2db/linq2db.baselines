BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	Convert(Date, DateAdd(dayofyear, 3, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

