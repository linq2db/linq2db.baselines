﻿BeforeExecute
-- SqlServer.2005

SELECT
	CASE
		WHEN [t1].[ParentID] IS NOT NULL THEN [t1].[ChildID]
		ELSE 0
	END
FROM
	[Parent] [employee]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[ParentID],
				[a_Children].[ChildID]
			FROM
				[Child] [a_Children]
			WHERE
				[employee].[ParentID] = [a_Children].[ParentID]
		) [t1]

