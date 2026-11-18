-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CStr([p].[ID])
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CStr([p].[ID])) > 0

