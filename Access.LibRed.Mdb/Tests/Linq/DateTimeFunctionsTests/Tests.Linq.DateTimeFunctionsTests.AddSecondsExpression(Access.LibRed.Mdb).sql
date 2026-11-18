-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Second  -- Int32
SET     @Second = -35

SELECT
	DatePart('s', DateAdd('s', @Second, [t].[DateTimeValue]))
FROM
	[LinqDataTypes] [t]

