BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @n Int -- Int32
SET     @n = 0

SELECT
	[ch].[ParentID] + 1
FROM
	[Child] [ch]
WHERE
	[ch].[ParentID] > ?
GROUP BY
	[ch].[ParentID] + 1

