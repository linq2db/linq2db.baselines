﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			[p].[Value1] IS NULL AND ([p].[ParentID] = IIF([p].[Value1] IS NULL, NULL, CAST(N'SHOULD NOT BE CALLED' AS INT)))
	), 1, 0)

