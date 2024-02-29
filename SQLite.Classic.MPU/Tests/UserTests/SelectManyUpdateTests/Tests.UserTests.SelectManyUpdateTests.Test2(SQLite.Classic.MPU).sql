BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

UPDATE
	[Child]
SET
	[ChildID] = 10
FROM
	[Parent] [x]
		INNER JOIN [Child] [a_Children] ON [x].[ParentID] = [a_Children].[ParentID]
WHERE
	1 = 0 AND [a_Children].[ParentID] = [Child].[ChildID]

