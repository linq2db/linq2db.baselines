﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				[AllTypes] [p]
			WHERE
				[p].[ID] = 1 AND (COALESCE(CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'-1' AS INT) END, CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'-1' AS INT) END) = [p].[intDataType] OR COALESCE(CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'-1' AS INT) END, CASE WHEN [p].[varcharDataType] IS NULL THEN NULL ELSE CAST(N'-1' AS INT) END) IS NULL AND [p].[intDataType] IS NULL)
		)
			THEN 1
		ELSE 0
	END

