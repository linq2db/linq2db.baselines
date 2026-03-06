-- SqlServer.SA SqlServer.2019

SELECT
	[m_1].[ParentID],
	[d_1].[Key_1]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		CROSS APPLY (
			SELECT DISTINCT
				[d].[ParentID] as [Key_1]
			FROM
				[Child] [d]
			WHERE
				[m_1].[ParentID] = [d].[ParentID]
		) [d_1]

-- SqlServer.SA SqlServer.2019

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

