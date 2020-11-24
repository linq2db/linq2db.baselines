BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID],
	[c_1].[GrandChildID]
FROM
	[Child] [t]
		INNER JOIN [Parent] [a_Parent] ON [t].[ParentID] = [a_Parent].[ParentID]
		INNER JOIN [GrandChild] [c_1] ON [a_Parent].[ParentID] = [c_1].[ParentID]
WHERE
	[c_1].[ParentID] = 1

