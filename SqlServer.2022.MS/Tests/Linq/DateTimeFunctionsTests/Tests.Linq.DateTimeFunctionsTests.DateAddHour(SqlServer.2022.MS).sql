-- SqlServer.2022.MS SqlServer.2022

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

