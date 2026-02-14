-- Access.Jet.OleDb AccessOleDb

SELECT
	(
		SELECT
			MAX([ch].[ChildID]) as [Max_1]
		FROM
			[Child] [ch]
		WHERE
			[ch].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

