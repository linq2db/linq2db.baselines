﻿BeforeExecute
--  SqlServer.2022

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[AllTypes] [p]
		WHERE
			[p].[ID] = 2 AND ([p].[intDataType] <> COALESCE(CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'1' AS INT) END, CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'1' AS INT) END) OR [p].[intDataType] IS NULL AND COALESCE(CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'1' AS INT) END, CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'1' AS INT) END) IS NOT NULL OR [p].[intDataType] IS NOT NULL AND COALESCE(CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'1' AS INT) END, CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'1' AS INT) END) IS NULL)
	), 1, 0)

