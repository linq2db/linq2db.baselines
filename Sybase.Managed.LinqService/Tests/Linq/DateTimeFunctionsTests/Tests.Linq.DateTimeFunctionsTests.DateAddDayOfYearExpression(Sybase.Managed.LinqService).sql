BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 3

SELECT
	CONVERT(Date, DateAdd(dayofyear, @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

