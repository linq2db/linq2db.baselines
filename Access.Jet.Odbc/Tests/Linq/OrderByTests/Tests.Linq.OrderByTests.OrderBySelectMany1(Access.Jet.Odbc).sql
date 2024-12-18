BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[sub].[ParentID_1],
	[sub].[ChildID]
FROM
	(
		SELECT
			[c_1].[ParentID],
			[p].[ParentID] as [ParentID_1],
			[c_1].[ChildID],
			[p].[Value1]
		FROM
			[Parent] [p],
			[Child] [c_1]
	) [sub]
		LEFT JOIN [Parent] [a_Parent] ON ([sub].[ParentID] = [a_Parent].[ParentID])
WHERE
	[sub].[ParentID_1] = [a_Parent].[ParentID] AND [a_Parent].[ParentID] IS NOT NULL AND
	([sub].[Value1] = [a_Parent].[Value1] AND [sub].[Value1] IS NOT NULL AND [a_Parent].[Value1] IS NOT NULL OR [sub].[Value1] IS NULL AND [a_Parent].[Value1] IS NULL)
ORDER BY
	[sub].[ParentID_1],
	[sub].[ChildID]

