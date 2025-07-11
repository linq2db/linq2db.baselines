﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [ch_1]
		WHERE
			[p].[ParentID] = [ch_1].[ParentID]
	),
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p]
		CROSS APPLY (
			SELECT TOP (1)
				[ch].[ParentID],
				[ch].[ChildID]
			FROM
				[Child] [ch]
			WHERE
				[p].[ParentID] = [ch].[ParentID]
		) [t1]
WHERE
	[p].[ParentID] = 1

