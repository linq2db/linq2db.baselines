BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value Integer -- Int32
SET     @Value = 41

SELECT
	DatePart(second, DateAdd(second, @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

