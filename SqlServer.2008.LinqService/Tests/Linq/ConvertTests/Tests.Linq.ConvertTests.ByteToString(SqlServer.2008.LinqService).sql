﻿BeforeExecute
-- SqlServer.2008

SELECT
	[p].[ID]
FROM
	[LinqDataTypes] [p]
WHERE
	LEN(CAST(CAST([p].[ID] AS TinyInt) AS NVarChar(3)) + N'.') > 1

