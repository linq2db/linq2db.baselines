﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[g_1].[Value1]
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					[GrandChild] [keyParam]
						INNER JOIN [Parent] [a_Parent] ON [keyParam].[ParentID] = [a_Parent].[ParentID]
				WHERE
					[a_Parent_4].[ParentID] = [a_Parent].[ParentID] AND
					[keyParam].[ChildID] >= 20
			) as [cnt],
			(
				SELECT
					Sum([keyParam_1].[ParentID])
				FROM
					[GrandChild] [keyParam_1]
						INNER JOIN [Parent] [a_Parent_1] ON [keyParam_1].[ParentID] = [a_Parent_1].[ParentID]
				WHERE
					[a_Parent_4].[ParentID] = [a_Parent_1].[ParentID] AND
					[keyParam_1].[ChildID] >= 19
			) as [Sum_1],
			(
				SELECT
					Max([keyParam_2].[ParentID])
				FROM
					[GrandChild] [keyParam_2]
						INNER JOIN [Parent] [a_Parent_2] ON [keyParam_2].[ParentID] = [a_Parent_2].[ParentID]
				WHERE
					[a_Parent_4].[ParentID] = [a_Parent_2].[ParentID] AND
					[keyParam_2].[ChildID] >= 19
			) as [Max_1],
			(
				SELECT
					Max([keyParam_3].[ParentID])
				FROM
					[GrandChild] [keyParam_3]
						INNER JOIN [Parent] [a_Parent_3] ON [keyParam_3].[ParentID] = [a_Parent_3].[ParentID]
				WHERE
					[a_Parent_4].[ParentID] = [a_Parent_3].[ParentID] AND
					[keyParam_3].[ChildID] >= 18
			) as [ex],
			[a_Parent_4].[Value1]
		FROM
			[GrandChild] [t1]
				INNER JOIN [Parent] [a_Parent_4] ON [t1].[ParentID] = [a_Parent_4].[ParentID]
		GROUP BY
			[a_Parent_4].[ParentID],
			[a_Parent_4].[Value1]
	) [g_1]
WHERE
	[g_1].[cnt] > 2 AND
	[g_1].[Sum_1] > 0 AND
	[g_1].[Max_1] > 0 AND
	[g_1].[ex] > 0

