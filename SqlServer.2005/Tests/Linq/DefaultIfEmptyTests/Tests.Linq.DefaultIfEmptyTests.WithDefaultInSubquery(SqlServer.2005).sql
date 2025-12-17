-- SqlServer.2005

SELECT
	(
		SELECT
			SUM([t1].[ParentID])
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
					) [c_1]
						LEFT JOIN [Child] [d] ON [p].[ParentID] = [d].[ParentID]
			) [t1]
	)
FROM
	[Parent] [p]

-- SqlServer.2005

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

-- SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

