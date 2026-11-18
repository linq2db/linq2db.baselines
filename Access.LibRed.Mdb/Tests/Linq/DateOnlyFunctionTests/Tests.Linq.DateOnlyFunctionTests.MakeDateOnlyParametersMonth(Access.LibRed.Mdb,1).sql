-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @month  -- Int32
SET     @month = 1

SELECT
	DateSerial(2010 + [t].[ID], @month, 1)
FROM
	[LinqDataTypes] [t]

