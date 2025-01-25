BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[ParentID],
	[t].[ChildID]
FROM
	[Child] [t]
UNION
SELECT
	[t_1].[ParentID],
	[t_1].[ChildID]
FROM
	[Child] [t_1]
WHERE
	[t_1].[ChildID] < 10
WITH OWNERACCESS OPTION

