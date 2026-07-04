-- Access.Jet.Odbc AccessODBC

SELECT
	[c_1].[ParentID],
	[c_1].[ParentID] as [ID1_1]
FROM
	[Parent] [c_1]
UNION ALL
SELECT
	[c_2].[ParentID],
	[c_2].[ChildID] as [ID1_1]
FROM
	[Child] [c_2]

