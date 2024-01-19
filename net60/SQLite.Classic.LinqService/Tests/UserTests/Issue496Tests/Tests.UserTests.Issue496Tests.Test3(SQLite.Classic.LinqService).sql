BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[a_Children].[ChildID],
	[a_Children].[ParentID]
FROM
	[Parent] [p]
		INNER JOIN [Child] [a_Children] ON Cast([p].[ParentID] as BigInt) = [a_Children].[ParentID]
WHERE
	[p].[ParentID] = 1

