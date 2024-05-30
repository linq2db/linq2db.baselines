BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

