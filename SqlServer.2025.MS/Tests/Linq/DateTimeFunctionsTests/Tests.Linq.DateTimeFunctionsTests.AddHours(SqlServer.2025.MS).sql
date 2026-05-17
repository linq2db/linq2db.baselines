-- SqlServer.2025.MS SqlServer.2025

SELECT
	DatePart(hour, DateAdd(hour, 22, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

