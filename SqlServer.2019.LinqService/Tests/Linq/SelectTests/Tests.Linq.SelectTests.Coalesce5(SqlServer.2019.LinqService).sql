﻿BeforeExecute
-- SqlServer.2019

SELECT
	Coalesce((
		SELECT
			Max([a_Children].[ChildID])
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	), [p].[Value1])
FROM
	[Parent] [p]

