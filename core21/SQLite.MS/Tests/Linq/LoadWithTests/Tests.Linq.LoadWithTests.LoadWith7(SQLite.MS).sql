﻿BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID],
	[c_1].[GrandChildID],
	[a_Child].[ParentID],
	[a_Child].[ChildID],
	[a_Child].[ParentID_1],
	[a_Child].[Value1]
FROM
	[Child] [t]
		INNER JOIN [GrandChild] [c_1] ON [t].[ParentID] = [c_1].[ParentID] AND [t].[ChildID] = [c_1].[ChildID]
		LEFT JOIN (
			SELECT
				[t1].[ParentID],
				[t1].[ChildID],
				[a_Parent].[ParentID] as [ParentID_1],
				[a_Parent].[Value1]
			FROM
				[Child] [t1]
					LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]
		) [a_Child] ON [c_1].[ParentID] = [a_Child].[ParentID] AND [c_1].[ChildID] = [a_Child].[ChildID]
LIMIT @take

