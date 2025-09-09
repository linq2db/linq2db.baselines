BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	[t].[ParentID],
	[t].[ChildID]
FROM
	[Child] [t]
WITH OWNERACCESS OPTION

