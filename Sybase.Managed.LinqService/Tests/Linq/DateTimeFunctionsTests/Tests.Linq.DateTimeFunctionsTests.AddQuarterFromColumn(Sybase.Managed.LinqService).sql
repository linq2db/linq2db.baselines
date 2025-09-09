BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	CONVERT(Date, DateAdd(quarter, [t].[SmallIntValue], [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

