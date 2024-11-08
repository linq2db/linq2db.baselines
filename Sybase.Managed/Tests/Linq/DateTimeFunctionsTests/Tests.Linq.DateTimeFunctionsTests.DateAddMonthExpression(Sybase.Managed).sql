BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value Integer -- Int32
SET     @Value = 2

SELECT
	CONVERT(Date, DateAdd(month, @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

