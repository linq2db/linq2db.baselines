-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Value  -- Int32
SET     @Value = 11

SELECT
	DateValue(DateAdd('yyyy', @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

