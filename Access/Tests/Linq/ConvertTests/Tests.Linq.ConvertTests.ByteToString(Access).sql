﻿BeforeExecute
-- Access AccessOleDb

SELECT
	CStr([p].[ID])
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CStr([p].[ID])) > 0

