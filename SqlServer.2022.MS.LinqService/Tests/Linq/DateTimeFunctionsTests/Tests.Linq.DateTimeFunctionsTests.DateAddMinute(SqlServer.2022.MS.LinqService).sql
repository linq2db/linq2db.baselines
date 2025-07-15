BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	DatePart(minute, DateAdd(minute, 5, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

