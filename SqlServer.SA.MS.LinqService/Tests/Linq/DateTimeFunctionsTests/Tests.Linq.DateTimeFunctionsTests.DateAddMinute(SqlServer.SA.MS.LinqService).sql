BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	DatePart(minute, DateAdd(minute, 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

