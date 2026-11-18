-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Value  -- Int32
SET     @Value = 2

SELECT
	DateValue(DateAdd('m', @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

