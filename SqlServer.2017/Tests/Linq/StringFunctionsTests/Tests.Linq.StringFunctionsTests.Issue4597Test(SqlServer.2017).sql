﻿BeforeExecute
-- SqlServer.2017

SELECT
	(
		SELECT
			STRING_AGG(CAST([a_Children].[ChildID] AS NVarChar(Max)), N', ')
		FROM
			[Child] [a_Children]
		WHERE
			[s].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [s]

