-- Access.Jet.Odbc AccessODBC

SELECT
	[c_1].[ParentID],
	[c_1].[ParentID]
FROM
	[Child] [c_1]
UNION
SELECT
	IIF(False, 0, NULL),
	[c_2].[ParentID]
FROM
	[Parent] [c_2]
UNION ALL
SELECT
	[c_3].[ParentID],
	[c_3].[ParentID]
FROM
	[Child] [c_3]

