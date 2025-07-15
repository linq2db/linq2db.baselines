BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[ParentID],
	[d_1].[Detail]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN (
			SELECT
				[d].[ParentID] as [Detail]
			FROM
				[Child] [d]
			GROUP BY
				[d].[ParentID]
		) [d_1] ON ([m_1].[ParentID] = [d_1].[Detail])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

