-- SqlServer.2014

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[ParentID]
		FROM
			[Child] [c_1]
				LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

-- SqlServer.2014

SELECT
	[r_1].[ParentID],
	[r_1].[ChildID],
	[r_1].[ParentID_1],
	[r_1].[Value1],
	[t1].[Count_1]
FROM
	(
		SELECT DISTINCT
			[r].[ParentID],
			[r].[ChildID],
			[a_Parent].[ParentID] as [ParentID_1],
			[a_Parent].[Value1]
		FROM
			[Child] [r]
				LEFT JOIN [Parent] [a_Parent] ON [r].[ParentID] = [a_Parent].[ParentID]
	) [r_1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Child] [a_Children]
			WHERE
				[r_1].[ParentID_1] = [a_Children].[ParentID]
		) [t1]
ORDER BY
	[t1].[Count_1]

-- SqlServer.2014

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

-- SqlServer.2014

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	[Child] [t1]
		LEFT JOIN [Parent] [a_Parent] ON [t1].[ParentID] = [a_Parent].[ParentID]

