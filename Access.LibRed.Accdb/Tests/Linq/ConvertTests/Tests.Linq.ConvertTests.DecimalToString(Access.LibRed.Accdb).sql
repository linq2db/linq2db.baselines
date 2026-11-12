-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	Replace(CStr([p].[MoneyValue]), CStr(','), CStr('.'))
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CStr([p].[MoneyValue])) > 0

