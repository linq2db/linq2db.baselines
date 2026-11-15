-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @p  -- Int32
SET     @p = 226

SELECT
	DateAdd('ms', @p, [t].[DateTimeValue])
FROM
	[LinqDataTypes] [t]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

