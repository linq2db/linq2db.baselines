BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[c_1].[Value1],
	IIF(False, 0, NULL)
FROM
	[Parent] [c_1]
UNION ALL
SELECT
	IIF(False, 0, NULL),
	[c_2].[ParentID]
FROM
	[Child] [c_2]

