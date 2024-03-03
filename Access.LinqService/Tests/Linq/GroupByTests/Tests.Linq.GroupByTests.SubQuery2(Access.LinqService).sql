BeforeExecute
-- Access AccessOleDb
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	[g_1].[ParentID] + 1
FROM
	[Child] [g_1]
WHERE
	[g_1].[ParentID] + 1 > @n
GROUP BY
	[g_1].[ParentID] + 1

