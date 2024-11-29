BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value Integer -- Int32
SET     @Value = 1

SELECT
	CONVERT(Date, DateAdd(weekday, @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

