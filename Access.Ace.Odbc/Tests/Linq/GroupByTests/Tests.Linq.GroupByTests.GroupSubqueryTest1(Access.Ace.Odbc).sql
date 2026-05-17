-- Access.Ace.Odbc AccessODBC

SELECT
	[pmp1].[ChildID]
FROM
	(
		SELECT DISTINCT
			[g_1].[ParentID]
		FROM
			[Child] [g_1]
	) [pmp],
	[Child] [pmp1]

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

