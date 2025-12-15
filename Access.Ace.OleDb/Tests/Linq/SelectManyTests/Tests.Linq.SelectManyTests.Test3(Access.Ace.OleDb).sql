-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[t1].[ParentID]
		FROM
			[Parent] [t1],
			[Person] [t]
	) [sub]
		INNER JOIN [GrandChild] [g_1] ON ([sub].[ParentID] = [g_1].[ParentID])

