BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[p_1].[val]
FROM
	(
		SELECT
			[p].[ParentID],
			CBool(True) as [val]
		FROM
			[Parent] [p]
		UNION
		SELECT
			[ch].[ParentID],
			CBool(False) as [val]
		FROM
			[Child] [ch]
	) [p_1]

