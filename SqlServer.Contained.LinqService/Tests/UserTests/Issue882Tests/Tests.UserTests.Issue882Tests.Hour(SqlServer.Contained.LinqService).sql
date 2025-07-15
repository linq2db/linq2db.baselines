BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	DatePart(hour, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

