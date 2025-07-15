BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	IIF((
		SELECT TOP 1
			[a_Parent].[Value1]
		FROM
			[Child] [ch]
				LEFT JOIN [Parent] [a_Parent] ON ([ch].[ParentID] = [a_Parent].[ParentID])
		WHERE
			[ch].[ChildID] = [c_1].[ChildID]
	) IS NULL, [c_1].[ChildID], (
		SELECT TOP 1
			[a_Parent].[Value1]
		FROM
			[Child] [ch]
				LEFT JOIN [Parent] [a_Parent] ON ([ch].[ParentID] = [a_Parent].[ParentID])
		WHERE
			[ch].[ChildID] = [c_1].[ChildID]
	))
FROM
	[Child] [c_1]

