﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			[p].[Value1] IS NULL AND [p].[ParentID] = IIF([p].[Value1] IS NOT NULL, CAST(N'SHOULD NOT BE CALLED' AS INT), NULL)
	), 1, 0)

