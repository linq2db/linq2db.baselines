BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[ch].[ParentID],
	[ch].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
WHERE
	[ch].[ParentID] = 1

