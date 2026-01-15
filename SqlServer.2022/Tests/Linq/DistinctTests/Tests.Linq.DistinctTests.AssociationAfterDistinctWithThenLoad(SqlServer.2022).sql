-- SqlServer.2022

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[ParentID]
		FROM
			[Child] [t1]
				LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SqlServer.2022

SELECT
	[t2].[ParentID],
	[t2].[ChildID],
	[t2].[ParentID_1],
	[t2].[Value1]
FROM
	(
		SELECT DISTINCT
			[t1].[ChildID],
			[t1].[ParentID],
			[a_Parent].[ParentID] as [ParentID_1],
			[a_Parent].[Value1]
		FROM
			[Child] [t1]
				LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]
	) [t2]
ORDER BY
	[t2].[ChildID]

-- SqlServer.2022

SELECT
	[m_1].[cond],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[ParentID] as [cond]
		FROM
			[Child] [t1]
				LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[cond] = [d].[ParentID]

-- SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[Child] [t1]
		LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]

