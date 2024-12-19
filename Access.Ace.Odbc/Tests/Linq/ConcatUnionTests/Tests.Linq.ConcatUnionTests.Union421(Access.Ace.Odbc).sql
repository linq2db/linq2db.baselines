BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[p_2].[val]
FROM
	(
		SELECT
			[p].[ParentID] as [id],
			CBool(True) as [val]
		FROM
			[Parent] [p]
		UNION
		SELECT
			[p_1].[ParentID] as [id],
			CBool(False) as [val]
		FROM
			[Parent] [p_1]
		UNION
		SELECT
			[ch].[ParentID] as [id],
			CBool(False) as [val]
		FROM
			[Child] [ch]
	) [p_2]

