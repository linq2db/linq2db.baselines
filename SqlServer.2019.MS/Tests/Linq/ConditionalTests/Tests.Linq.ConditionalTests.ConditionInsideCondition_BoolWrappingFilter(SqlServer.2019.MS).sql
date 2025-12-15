-- SqlServer.2019.MS SqlServer.2019

SELECT
	[s].[Value_1]
FROM
	(
		SELECT
			CASE
				WHEN [p].[ParentID] % 2 = 0 THEN IIF([p].[ParentID] % 3 = 0, 1, 0)
				WHEN [p].[ParentID] % 4 = 0 THEN IIF([p].[ParentID] > 0, 1, 0)
				ELSE IIF([p].[ParentID] < 5, 1, 0)
			END as [Value_1]
		FROM
			[Parent] [p]
	) [s]
WHERE
	[s].[Value_1] = 1

-- SqlServer.2019.MS SqlServer.2019

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

-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

