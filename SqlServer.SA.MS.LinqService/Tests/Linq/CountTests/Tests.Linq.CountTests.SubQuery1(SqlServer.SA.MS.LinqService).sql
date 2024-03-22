﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] = [p].[ParentID] AND
			Convert(Decimal, [a_Children].[ChildID]) <> 0
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

