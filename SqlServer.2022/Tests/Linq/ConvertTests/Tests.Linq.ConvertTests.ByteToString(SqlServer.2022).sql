﻿BeforeExecute
-- SqlServer.2022

SELECT
	CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))
FROM
	[LinqDataTypes] [p]
WHERE
	Len(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3))) > 0

