BeforeExecute
-- SqlServer.2022

SELECT
	DatePart(hour, [t].[DateTimeValue]) % 7
FROM
	[LinqDataTypes] [t]

