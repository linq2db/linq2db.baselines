﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

UPDATE
	[w]
SET
	[w].[Value1] = [b].[ChildID]
FROM
	[Parent] [w]
		INNER JOIN [Child] [b] ON [w].[ParentID] = [b].[ParentID]
WHERE
	[b].[ChildID] = (
		SELECT
			MAX([b2].[ParentID])
		FROM
			[Child] [b2]
	) AND
	(
		SELECT
			MAX([b2].[ParentID])
		FROM
			[Child] [b2]
	) IS NOT NULL AND
	[b].[ChildID] = -1

