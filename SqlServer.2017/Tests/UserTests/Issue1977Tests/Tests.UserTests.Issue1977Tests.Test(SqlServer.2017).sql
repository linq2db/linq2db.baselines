﻿BeforeExecute
-- SqlServer.2017

SELECT
	IIF(N'Issue1977Table/' + CAST([f].[firstField] AS NVarChar(36)) + N'/' + CAST([f].[secondField] AS NVarChar(36)) = CONCAT_WS(N'/', N'Issue1977Table', CAST([f].[firstField] AS NVarChar(36)), CAST([f].[secondField] AS NVarChar(36))), 1, 0)
FROM
	[Issue1977Table] [f]

