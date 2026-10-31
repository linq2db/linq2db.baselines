-- Access.Jet.OleDb AccessOleDb
SELECT
	[t1].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[ch].[ParentID],
				[ch].[ChildID]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ChildID] = [ch].[ParentID] * 10 + 1
		) [t1] ON ([t1].[ParentID] = [p].[ParentID])
WHERE
	[p].[ParentID] <> 5

