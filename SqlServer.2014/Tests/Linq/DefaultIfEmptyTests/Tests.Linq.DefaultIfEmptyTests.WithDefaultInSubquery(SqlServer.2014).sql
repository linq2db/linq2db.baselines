-- SqlServer.2014

SELECT
	(
		SELECT
			SUM([t2].[ParentID])
		FROM
			(
				SELECT
					IIF([d].[ParentID] IS NOT NULL, [d].[ParentID], -100) as [ParentID]
				FROM
					(
						SELECT
							1 as [c1]
					) [t1]
						LEFT JOIN [Child] [d] ON [p].[ParentID] = [d].[ParentID]
			) [t2]
	)
FROM
	[Parent] [p]

-- SqlServer.2014

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SqlServer.2014

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

