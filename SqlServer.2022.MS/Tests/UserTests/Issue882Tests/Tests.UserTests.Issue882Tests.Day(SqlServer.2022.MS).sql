BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	DatePart(day, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

