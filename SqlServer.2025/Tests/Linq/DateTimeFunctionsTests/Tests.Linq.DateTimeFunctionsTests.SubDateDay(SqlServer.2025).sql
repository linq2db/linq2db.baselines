BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	DateDiff_Big(day, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

