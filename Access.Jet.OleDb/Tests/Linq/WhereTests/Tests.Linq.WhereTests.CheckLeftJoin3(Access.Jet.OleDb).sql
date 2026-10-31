-- Access.Jet.OleDb AccessOleDb
SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[c_1].[ParentID],
				[c_1].[ChildID]
			FROM
				[GrandChild] [c_1]
			WHERE
				[c_1].[ParentID] > 0
		) [ch] ON ([p].[ParentID] = 1 + [ch].[ParentID])
WHERE
	NOT ([ch].[ParentID] IS NOT NULL AND [ch].[ChildID] IS NOT NULL)

