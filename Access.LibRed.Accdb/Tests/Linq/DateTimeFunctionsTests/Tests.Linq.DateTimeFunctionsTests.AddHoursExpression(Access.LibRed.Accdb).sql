-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Hour  -- Int32
SET     @Hour = 22

SELECT
	DatePart('h', DateAdd('h', @Hour, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

