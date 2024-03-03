BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[g_1].[ParentID] + 1
FROM
	[Child] [g_1]
WHERE
	[g_1].[ParentID] + 1 > ?
GROUP BY
	[g_1].[ParentID] + 1

