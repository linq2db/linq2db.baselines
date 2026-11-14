-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @month  -- Int32
SET     @month = 10

SELECT
	DateSerial(2010 + [t].[ID], @month, 1)
FROM
	[LinqDataTypes] [t]

