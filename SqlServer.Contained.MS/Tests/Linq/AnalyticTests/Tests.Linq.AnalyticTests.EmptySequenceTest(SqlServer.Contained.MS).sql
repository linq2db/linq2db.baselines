-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[m_1].[ParentID],
	[d_1].[Key_1],
	[d_1].[Children]
FROM
	(
		SELECT DISTINCT
			[c_1].[ParentID]
		FROM
			[Parent] [c_1]
	) [m_1]
		INNER JOIN (
			SELECT
				[d].[ParentID] as [Key_1],
				STRING_AGG(CAST([d].[ChildID] AS NVarChar(11)), N', ') as [Children]
			FROM
				[Child] [d]
			GROUP BY
				[d].[ParentID]
		) [d_1] ON [m_1].[ParentID] = [d_1].[Key_1]

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[c_1].[ParentID]
FROM
	[Parent] [c_1]

