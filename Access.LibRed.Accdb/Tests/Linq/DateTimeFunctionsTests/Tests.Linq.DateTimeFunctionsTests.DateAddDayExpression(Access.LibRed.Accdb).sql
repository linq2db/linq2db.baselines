-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Value  -- Int32
SET     @Value = 5

SELECT
	DateValue(DateAdd('d', @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

