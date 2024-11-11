BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	IIF(False, 0, NULL)
FROM
	[GrandChild] [t1]
GROUP BY
	[t1].[ParentID],
	[t1].[ChildID]

