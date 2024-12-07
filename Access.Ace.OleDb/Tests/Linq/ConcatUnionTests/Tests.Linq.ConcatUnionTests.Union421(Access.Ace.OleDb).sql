BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[p_2].[val]
FROM
	(
		SELECT
			[p].[ParentID],
			CBool(True) as [val]
		FROM
			[Parent] [p]
		UNION
		SELECT
			[p_1].[ParentID],
			CBool(False) as [val]
		FROM
			[Parent] [p_1]
		UNION
		SELECT
			[ch].[ParentID],
			CBool(False) as [c1]
		FROM
			[Child] [ch]
	) [p_2]

