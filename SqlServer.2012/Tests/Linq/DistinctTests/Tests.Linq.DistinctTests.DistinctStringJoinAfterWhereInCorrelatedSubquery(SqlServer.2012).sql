-- SqlServer.2012
SELECT
	[m_1].[ParentID],
	[d_1].[c1]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		CROSS APPLY (
			SELECT DISTINCT
				CAST([d].[ChildID] AS NVarChar(11)) as [c1]
			FROM
				[Child] [d]
			WHERE
				[d].[ParentID] = [m_1].[ParentID] AND CAST([d].[ChildID] AS NVarChar(11)) <> N'11'
		) [d_1]
ORDER BY
	[m_1].[ParentID]

-- SqlServer.2012
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

