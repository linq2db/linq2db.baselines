-- SqlServer.SA SqlServer.2019

SELECT
	[m_1].[ParentID],
	[m_1].[ParentID_1],
	[d_1].[ParentID],
	[d_1].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[ParentID],
			[t1].[ParentID] as [ParentID_1]
		FROM
			(
				SELECT TOP (1)
					[p].[ParentID]
				FROM
					[Parent] [p]
				WHERE
					[p].[ParentID] < 2
			) [t1]
				INNER JOIN [Child] [d] ON [t1].[ParentID] = [d].[ParentID]
				LEFT JOIN [Parent] [a_Parent] ON [d].[ParentID] = [a_Parent].[ParentID]
	) [m_1]
		INNER JOIN [Child] [d_1] ON [m_1].[ParentID] = [d_1].[ParentID]

-- SqlServer.SA SqlServer.2019

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	(
		SELECT TOP (1)
			[p].[ParentID]
		FROM
			[Parent] [p]
		WHERE
			[p].[ParentID] < 2
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [d].[ParentID] = [a_Parent].[ParentID]

-- SqlServer.SA SqlServer.2019

SELECT TOP (1)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] < 2

