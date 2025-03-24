﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	CASE
		WHEN [p].[Value1] IS NULL THEN (
			SELECT
				COUNT(*)
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID]
		)
		ELSE (
			SELECT
				COUNT(*)
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID] AND [c_1].[ParentID] = [p].[ParentID]
		)
	END
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

