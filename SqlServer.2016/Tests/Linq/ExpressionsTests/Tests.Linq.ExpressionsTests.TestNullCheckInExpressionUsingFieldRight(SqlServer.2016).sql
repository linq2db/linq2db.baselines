﻿BeforeExecute
-- SqlServer.2016

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			[p].[Value1] IS NULL AND [p].[ParentID] = IIF([p].[Value1] IS NOT NULL, CAST(N'SHOULD NOT BE CALLED' AS INT), NULL) AND
			IIF([p].[Value1] IS NOT NULL, CAST(N'SHOULD NOT BE CALLED' AS INT), NULL) IS NOT NULL
	), 1, 0)

