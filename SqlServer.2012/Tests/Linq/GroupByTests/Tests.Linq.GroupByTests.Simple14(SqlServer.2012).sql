-- SqlServer.2012

SELECT
	[m_1].[Item1],
	[d_1].[Key_1]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID] as [Item1]
		FROM
			[Parent] [p]
	) [m_1]
		CROSS APPLY (
			SELECT DISTINCT
				[d].[ParentID] as [Key_1]
			FROM
				[Child] [d]
			WHERE
				[m_1].[Item1] = [d].[ParentID]
		) [d_1]

-- SqlServer.2012

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

