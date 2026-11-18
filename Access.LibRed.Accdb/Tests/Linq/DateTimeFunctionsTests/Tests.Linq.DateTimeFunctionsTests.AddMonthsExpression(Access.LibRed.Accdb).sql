-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Date  -- Int32
SET     @Date = -2

SELECT
	DateValue(DateAdd('m', @Date, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

