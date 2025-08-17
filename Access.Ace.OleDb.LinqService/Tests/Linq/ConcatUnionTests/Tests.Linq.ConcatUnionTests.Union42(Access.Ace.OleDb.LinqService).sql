BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	[p_1].[val]
FROM
	(
		SELECT
			[p].[ParentID] as [id],
			CBool(True) as [val]
		FROM
			[Parent] [p]
		UNION
		SELECT
			[ch].[ParentID] as [id],
			CBool(False) as [val]
		FROM
			[Child] [ch]
	) [p_1]

