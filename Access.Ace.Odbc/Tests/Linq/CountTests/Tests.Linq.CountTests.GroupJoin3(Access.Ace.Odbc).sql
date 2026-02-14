-- Access.Ace.Odbc AccessODBC

SELECT
	(
		SELECT
			COUNT(*) as [Count1]
		FROM
			[Child] [c_1]
		WHERE
			[t1].[ParentID] = [c_1].[ParentID]
	)
FROM
	[Parent] [t1]

