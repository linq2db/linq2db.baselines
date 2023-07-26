BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Sum([t1].[ChildID]),
	Min([t1].[ChildID]),
	Max([t1].[ChildID]),
	Avg([t1].[ChildID]),
	Count(*)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

