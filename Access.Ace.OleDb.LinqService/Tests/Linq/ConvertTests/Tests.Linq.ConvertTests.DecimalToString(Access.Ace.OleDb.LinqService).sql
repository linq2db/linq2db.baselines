﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	REPLACE(CStr([p].[MoneyValue]), CStr(','), CStr('.'))
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CStr([p].[MoneyValue])) > 0

