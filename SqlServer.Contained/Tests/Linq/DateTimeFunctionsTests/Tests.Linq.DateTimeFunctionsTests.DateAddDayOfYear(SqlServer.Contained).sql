BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	Convert(Date, DateAdd(dayofyear, 3, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

