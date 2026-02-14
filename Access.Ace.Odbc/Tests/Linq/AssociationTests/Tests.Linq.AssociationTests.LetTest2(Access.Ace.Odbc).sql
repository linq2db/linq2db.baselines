-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[ParentID],
	(
		SELECT
			COUNT(*) as [Count_1]
		FROM
			[Child] [a_Children]
		WHERE
			[t].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [t]

-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[ParentID],
	(
		SELECT
			COUNT(*) as [Count_1]
		FROM
			[Child] [a_Children]
		WHERE
			[t].[ParentID] = [a_Children].[ParentID]
	)
FROM
	[Parent] [t]

