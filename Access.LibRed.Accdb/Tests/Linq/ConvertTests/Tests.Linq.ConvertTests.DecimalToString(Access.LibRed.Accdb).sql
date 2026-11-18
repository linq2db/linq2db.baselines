-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	RTrim(Replace(CStr([p].[MoneyValue]), CStr(','), CStr('.')), '0.')
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CStr([p].[MoneyValue])) > 0

