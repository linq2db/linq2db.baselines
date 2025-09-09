BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	CAST(DateAdd(dayofyear, 3, [t].[DateTimeValue]) AS Date)
FROM
	[LinqDataTypes] [t]

