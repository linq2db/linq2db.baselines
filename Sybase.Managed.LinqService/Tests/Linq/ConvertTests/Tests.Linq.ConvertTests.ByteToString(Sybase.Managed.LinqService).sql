﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[ID]
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))) > 0

