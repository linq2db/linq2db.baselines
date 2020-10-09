BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	Max([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

