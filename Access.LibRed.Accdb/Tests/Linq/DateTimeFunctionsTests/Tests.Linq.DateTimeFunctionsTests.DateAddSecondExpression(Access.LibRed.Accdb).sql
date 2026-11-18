-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Value  -- Int32
SET     @Value = 41

SELECT
	DatePart('s', DateAdd('s', @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

