BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	IIF(COUNT(*) > 0, True, False)
FROM
	[Parent] [p]
UNION ALL
SELECT
	[p_1].[ParentID]
FROM
	[Parent] [p_1]

