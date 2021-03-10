BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[ch].[ParentID] + 1
FROM
	[Child] [ch]
WHERE
	[ch].[ParentID] + 1 > ?
GROUP BY
	[ch].[ParentID] + 1

