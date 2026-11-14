-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Value  -- Int32
SET     @Value = 1

SELECT
	DatePart('h', DateAdd('h', @Value, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

