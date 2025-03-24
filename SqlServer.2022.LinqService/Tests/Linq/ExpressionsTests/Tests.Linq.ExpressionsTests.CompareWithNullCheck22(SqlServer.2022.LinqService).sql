﻿BeforeExecute
--  SqlServer.2022

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[AllTypes] [p]
		WHERE
			[p].[ID] = 1 AND (COALESCE(CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'-1' AS INT) END, CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'-1' AS INT) END) = [p].[intDataType] OR COALESCE(CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'-1' AS INT) END, CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'-1' AS INT) END) IS NULL AND [p].[intDataType] IS NULL)
	), 1, 0)

