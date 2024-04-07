BeforeExecute
-- Access AccessOleDb

SELECT
	[t].[ParentID],
	[t].[ChildID]
FROM
	[Child] [t]
WITH OWNERACCESS OPTION

