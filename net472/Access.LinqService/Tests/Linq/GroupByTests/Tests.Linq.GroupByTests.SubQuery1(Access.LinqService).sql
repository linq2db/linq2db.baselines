BeforeExecute
-- Access AccessOleDb
DECLARE @n Integer -- Int32
SET     @n = 0

SELECT
	[ch].[ParentID] + 1
FROM
	[Child] [ch]
WHERE
	[ch].[ParentID] > @n
GROUP BY
	[ch].[ParentID] + 1

