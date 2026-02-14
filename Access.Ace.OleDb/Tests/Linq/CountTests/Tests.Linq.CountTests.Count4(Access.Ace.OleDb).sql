-- Access.Ace.OleDb AccessOleDb

SELECT
	(
		SELECT
			COUNT(*) as [Count_1]
		FROM
			[Child] [t1]
	)
FROM
	[Parent] [p]

