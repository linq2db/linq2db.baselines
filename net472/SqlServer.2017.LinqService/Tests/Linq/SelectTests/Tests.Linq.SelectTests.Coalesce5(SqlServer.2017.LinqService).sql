﻿BeforeExecute
-- SqlServer.2017

SELECT
	IIF((
		SELECT
			Max([c_1].[ChildID])
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID]
	) IS NULL, [p].[Value1], (
		SELECT
			Max([c_1].[ChildID])
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID]
	))
FROM
	[Parent] [p]

