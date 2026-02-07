-- SqlServer.2017.MS SqlServer.2017

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

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

