﻿BeforeExecute
-- SqlCe

SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
				CROSS APPLY (
					SELECT TOP (1)
						*
					FROM
						[Child] [ch]
					WHERE
						[p].[ParentID] = [ch].[ParentID]
					ORDER BY
						[ch].[ChildID] DESC
				) [t1]
		WHERE
			[p].[ParentID] = 1
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID],
	[t1].[ParentID] as [ParentID_1],
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
			ORDER BY
				[ch].[ChildID] DESC
		) [t1]
WHERE
	[p].[ParentID] = 1

