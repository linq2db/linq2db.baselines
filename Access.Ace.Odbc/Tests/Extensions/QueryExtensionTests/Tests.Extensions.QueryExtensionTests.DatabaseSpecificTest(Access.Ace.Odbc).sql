-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[ParentID],
	[t].[ChildID]
FROM
	[Child] [t]
WITH OWNERACCESS OPTION

