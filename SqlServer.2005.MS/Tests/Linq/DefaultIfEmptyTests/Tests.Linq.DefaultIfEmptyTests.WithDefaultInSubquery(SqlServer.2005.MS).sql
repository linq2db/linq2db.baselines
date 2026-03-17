-- SqlServer.2005.MS SqlServer.2005

SELECT
	(
		SELECT
			SUM([t2].[ParentID])
		FROM
			(
				SELECT
					CASE
						WHEN [d].[ParentID] IS NOT NULL THEN [d].[ParentID]
						ELSE -100
					END as [ParentID]
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

-- SqlServer.2005.MS SqlServer.2005

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

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

