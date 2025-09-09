BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	[t].[ParentID],
	[t].[ChildID]
FROM
	[Child] [t]
WITH OWNERACCESS OPTION

