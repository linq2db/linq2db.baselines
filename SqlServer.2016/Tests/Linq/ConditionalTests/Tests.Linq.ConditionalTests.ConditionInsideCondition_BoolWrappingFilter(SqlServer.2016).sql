-- SqlServer.2016
SELECT
	CASE
		WHEN [s].[ParentID] % 2 = 0 THEN IIF([s].[ParentID] % 3 = 0, 1, 0)
		WHEN [s].[ParentID] % 4 = 0 THEN IIF([s].[ParentID] > 0, 1, 0)
		ELSE IIF([s].[ParentID] < 5, 1, 0)
	END
FROM
	[Parent] [s]
WHERE
	CASE
		WHEN [s].[ParentID] % 2 = 0 THEN IIF([s].[ParentID] % 3 = 0, 1, 0)
		WHEN [s].[ParentID] % 4 = 0 THEN IIF([s].[ParentID] > 0, 1, 0)
		ELSE IIF([s].[ParentID] < 5, 1, 0)
	END = 1

-- SqlServer.2016
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

-- SqlServer.2016
SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

