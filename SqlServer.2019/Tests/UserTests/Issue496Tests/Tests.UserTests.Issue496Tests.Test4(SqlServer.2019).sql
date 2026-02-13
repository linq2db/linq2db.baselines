-- SqlServer.2019

SELECT
	[m_1].[Item1],
	[d].[ChildID],
	[d].[ParentID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID] as [Item1]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON CAST([m_1].[Item1] AS BigInt) = [d].[ParentID]

-- SqlServer.2019

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

