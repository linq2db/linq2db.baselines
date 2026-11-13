-- Access.Ace.OleDb AccessOleDb
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [t1]

