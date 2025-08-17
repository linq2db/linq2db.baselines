BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	CAST(DateAdd(year, [t].[SmallIntValue], [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

