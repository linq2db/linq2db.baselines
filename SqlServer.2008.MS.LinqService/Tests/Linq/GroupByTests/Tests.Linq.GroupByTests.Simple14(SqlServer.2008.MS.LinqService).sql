BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

