-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @year  -- Int32
SET     @year = 2010

SELECT
	DateSerial(@year, [t].[ID], 1)
FROM
	[LinqDataTypes] [t]
WHERE
	DatePart('yyyy', DateSerial(@year, [t].[ID], 1)) = 2010

