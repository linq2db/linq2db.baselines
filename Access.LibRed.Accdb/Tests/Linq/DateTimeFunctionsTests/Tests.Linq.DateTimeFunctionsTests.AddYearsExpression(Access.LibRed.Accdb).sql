-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Date  -- Int32
SET     @Date = 1

SELECT
	DateValue(DateAdd('yyyy', @Date, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

