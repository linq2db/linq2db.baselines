﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[a_Parent].[ParentID]
FROM
	(
		SELECT
			[c_1].[ParentID],
			[c_1].[ChildID]
		FROM
			[Child] [c_1]
		UNION
		SELECT
			[t1].[ParentID],
			[t1].[ChildID]
		FROM
			[Child] [t1]
	) [t2]
		LEFT JOIN [Parent] [a_Parent] ON [t2].[ParentID] = [a_Parent].[ParentID]

