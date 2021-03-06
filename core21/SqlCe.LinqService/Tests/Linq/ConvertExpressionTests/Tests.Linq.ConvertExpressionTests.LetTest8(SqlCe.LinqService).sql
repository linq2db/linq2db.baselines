﻿BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	CASE WHEN EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID] AND [c_1].[ChildID] > -100
	) THEN 1 ELSE 0 END,
	[t3].[Count_1],
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (@take)
				[c_2].[ParentID],
				[c_2].[ChildID]
			FROM
				[Child] [c_2]
			WHERE
				[c_2].[ParentID] = [p].[ParentID] AND [c_2].[ChildID] > -100 AND
				[c_2].[ParentID] > 0
			ORDER BY
				[c_2].[ChildID]
		) [t1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[c_3].[ParentID],
				[c_3].[ChildID]
			FROM
				[Child] [c_3]
			WHERE
				[c_3].[ParentID] = [p].[ParentID] AND [c_3].[ChildID] > -100
			ORDER BY
				[c_3].[ChildID]
		) [t2]
		LEFT JOIN (
			SELECT
				Count(*) as [Count_1],
				[c_4].[ParentID]
			FROM
				[Child] [c_4]
			WHERE
				[c_4].[ChildID] > -100
			GROUP BY
				[c_4].[ParentID]
		) [t3] ON [t3].[ParentID] = [p].[ParentID]

