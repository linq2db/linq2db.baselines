BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

