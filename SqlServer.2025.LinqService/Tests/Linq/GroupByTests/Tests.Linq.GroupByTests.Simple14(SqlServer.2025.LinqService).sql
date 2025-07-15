BeforeExecute
-- SqlServer.2025 SqlServer.2022

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
		) [d_1] ON [m_1].[ParentID] = [d_1].[Detail]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

