BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[ChildID],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [a_GrandChildren]
		WHERE
			[p].[ParentID] = [a_GrandChildren].[ParentID] AND
			[a_GrandChildren].[ParentID] IS NOT NULL AND
			[p].[ChildID] = [a_GrandChildren].[ChildID] AND
			[a_GrandChildren].[ChildID] IS NOT NULL
	), True, False)
FROM
	[Child] [p]
UNION ALL
SELECT
	[p_1].[ChildID],
	IIF(EXISTS(
		SELECT
			*
		FROM
			[GrandChild] [a_GrandChildren_1]
		WHERE
			[p_1].[ParentID] = [a_GrandChildren_1].[ParentID] AND
			[a_GrandChildren_1].[ParentID] IS NOT NULL AND
			[p_1].[ChildID] = [a_GrandChildren_1].[ChildID] AND
			[a_GrandChildren_1].[ChildID] IS NOT NULL
	), True, False)
FROM
	[Child] [p_1]

