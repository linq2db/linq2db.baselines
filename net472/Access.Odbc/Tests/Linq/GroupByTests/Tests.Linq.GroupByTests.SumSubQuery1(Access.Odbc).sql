BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	Sum([ch].[ParentID] - 2)
FROM
	[Child] [ch]
WHERE
	[ch].[ParentID] + 2 > ?
GROUP BY
	[ch].[ParentID] + 1,
	[ch].[ChildID]

