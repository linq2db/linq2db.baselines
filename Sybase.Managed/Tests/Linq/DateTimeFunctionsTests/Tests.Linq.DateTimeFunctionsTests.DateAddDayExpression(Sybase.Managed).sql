-- Sybase.Managed Sybase
DECLARE @Value Integer -- Int32
SET     @Value = 5

SELECT
	CONVERT(Date, DateAdd(day, @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

