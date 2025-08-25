BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = -1

SELECT
	CONVERT(Date, DateAdd(week, @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

