﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[a_2].[ParentID],
	[a_2].[Value1],
	[z_2].[ParentID],
	[z_2].[Value1],
	[y].[ParentID],
	[y].[Value1],
	[a].[ParentID],
	[a].[Value1],
	[z].[ParentID],
	[z].[Value1],
	[a_1].[ParentID],
	[a_1].[Value1]
FROM
	[Parent] [a_2]
		LEFT JOIN [Parent] [y] ON [a_2].[ParentID] = [y].[ParentID]
		LEFT JOIN [Parent] [a] ON [a_2].[ParentID] = [a].[ParentID]
		LEFT JOIN [Parent] [z] ON [a_2].[ParentID] = [z].[ParentID]
		LEFT JOIN (
			SELECT
				[z_1].[ParentID],
				[z_1].[Value1],
				Coalesce([z_1].[Value1], 1) as [c1]
			FROM
				[Parent] [z_1]
		) [z_2] ON [a_2].[ParentID] = [z_2].[c1]
		LEFT JOIN [Parent] [a_1] ON [a_2].[ParentID] = [a_1].[ParentID]

