-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Date  -- Int32
SET     @Date = 5

SELECT
	DateValue(DateAdd('d', @Date, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

