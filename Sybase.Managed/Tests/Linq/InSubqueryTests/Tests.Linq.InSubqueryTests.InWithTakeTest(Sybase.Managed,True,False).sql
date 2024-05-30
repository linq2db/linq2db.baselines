﻿BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] IS NOT NULL AND EXISTS(
		SELECT
			*
		FROM
			(
				SELECT TOP 100
					[v].[ParentID]
				FROM
					[Parent] [v]
				WHERE
					[v].[ParentID] IS NOT NULL
			) [t1]
		WHERE
			[c_1].[ParentID] = [t1].[ParentID]
	)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

