-- SQLite.MS SQLite
UPDATE
	[Child]
SET
	[ParentID] = [Child].[ParentID]
FROM
	[Parent] [parent_1]
WHERE
	[Child].[ChildID] = -2147483648 AND [parent_1].[ParentID] = [Child].[ParentID]

