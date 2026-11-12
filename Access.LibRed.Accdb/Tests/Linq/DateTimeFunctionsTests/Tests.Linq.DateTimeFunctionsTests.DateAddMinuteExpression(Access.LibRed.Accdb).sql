-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Value  -- Int32
SET     @Value = 5

SELECT
	DatePart('n', DateAdd('n', @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

