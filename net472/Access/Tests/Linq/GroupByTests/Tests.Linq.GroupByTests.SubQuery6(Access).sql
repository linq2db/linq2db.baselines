BeforeExecute
-- Access AccessOleDb

SELECT
	[ch].[ParentID] + 1
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID] + 1

