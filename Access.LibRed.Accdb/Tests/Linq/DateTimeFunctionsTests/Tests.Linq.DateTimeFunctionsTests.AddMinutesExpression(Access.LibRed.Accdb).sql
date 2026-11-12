-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Minute  -- Int32
SET     @Minute = -8

SELECT
	DatePart('n', DateAdd('n', @Minute, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

