BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[c_2].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Child].[ParentID],
			[a_Child].[ChildID]
		FROM
			([GrandChild] [c_1]
				LEFT JOIN [Child] [a_Child] ON ([c_1].[ParentID] = [a_Child].[ParentID] AND [c_1].[ParentID] IS NOT NULL AND [c_1].[ChildID] = [a_Child].[ChildID] AND [c_1].[ChildID] IS NOT NULL))
				LEFT JOIN [Parent] [a_Parent] ON ([a_Child].[ParentID] = [a_Parent].[ParentID])
		WHERE
			[a_Parent].[ParentID] > 0 AND [a_Parent].[ParentID] IS NOT NULL
	) [c_2]

