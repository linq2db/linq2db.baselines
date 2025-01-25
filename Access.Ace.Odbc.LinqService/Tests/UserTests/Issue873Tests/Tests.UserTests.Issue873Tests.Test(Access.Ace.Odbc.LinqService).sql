BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	' ' + CStr(IIF([f].[Value1] IS NULL, 0, [f].[Value1])),
	(
		SELECT
			SUM([c_1].[ChildID])
		FROM
			[Child] [c_1]
				LEFT JOIN [Parent] [a_Parent] ON ([c_1].[ParentID] = [a_Parent].[ParentID])
		WHERE
			[a_Parent].[ParentID] = [f].[ParentID] AND ([a_Parent].[Value1] = [f].[Value1] OR [a_Parent].[Value1] IS NULL AND [f].[Value1] IS NULL)
	),
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_2]
				LEFT JOIN [Parent] [a_Parent_1] ON ([c_2].[ParentID] = [a_Parent_1].[ParentID])
		WHERE
			[a_Parent_1].[ParentID] = [f].[ParentID] AND ([a_Parent_1].[Value1] = [f].[Value1] OR [a_Parent_1].[Value1] IS NULL AND [f].[Value1] IS NULL)
	),
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [p]
				LEFT JOIN [Parent] [a_Parent_2] ON ([p].[ParentID] = [a_Parent_2].[ParentID])
		WHERE
			[a_Parent_2].[ParentID] = [f].[ParentID] AND ([a_Parent_2].[Value1] = [f].[Value1] OR [a_Parent_2].[Value1] IS NULL AND [f].[Value1] IS NULL)
	)
FROM
	[Parent] [f]
WHERE
	' ' + CStr(IIF([f].[Value1] IS NULL, 0, [f].[Value1])) LIKE '%1%' AND
	(
		SELECT
			SUM([c_1].[ChildID])
		FROM
			[Child] [c_1]
				LEFT JOIN [Parent] [a_Parent] ON ([c_1].[ParentID] = [a_Parent].[ParentID])
		WHERE
			[a_Parent].[ParentID] = [f].[ParentID] AND ([a_Parent].[Value1] = [f].[Value1] OR [a_Parent].[Value1] IS NULL AND [f].[Value1] IS NULL)
	) > 0

