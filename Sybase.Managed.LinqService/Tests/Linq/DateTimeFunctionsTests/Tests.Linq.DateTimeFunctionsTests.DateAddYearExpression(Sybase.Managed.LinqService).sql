BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @Value Integer -- Int32
SET     @Value = 11

SELECT
	CONVERT(Date, DateAdd(year, @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

