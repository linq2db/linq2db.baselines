﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	(
		SELECT DISTINCT
			[a_Children].[ParentID]
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [p]

