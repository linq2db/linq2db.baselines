-- SqlCe
SELECT
	[m_1].[ParentID],
	[m_1].[ParentID_1],
	[d_1].[ParentID] as [ParentID_2],
	[d_1].[ChildID]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[ParentID],
			[t1].[ParentID] as [ParentID_1]
		FROM
			(
				SELECT TOP (1)
					[parent_1].[ParentID]
				FROM
					[Parent] [parent_1]
				WHERE
					[parent_1].[ParentID] < 2
			) [t1]
				INNER JOIN [Child] [d] ON [t1].[ParentID] = [d].[ParentID]
				LEFT JOIN [Parent] [a_Parent] ON [d].[ParentID] = [a_Parent].[ParentID]
	) [m_1]
		INNER JOIN [Child] [d_1] ON [m_1].[ParentID] = [d_1].[ParentID]

-- SqlCe
SELECT
	[m_1].[ParentID],
	[d].[ParentID] as [ParentID_1],
	[d].[ChildID],
	[a_Parent].[ParentID] as [ParentID_2],
	[a_Parent].[Value1]
FROM
	(
		SELECT TOP (1)
			[parent_1].[ParentID]
		FROM
			[Parent] [parent_1]
		WHERE
			[parent_1].[ParentID] < 2
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [d].[ParentID] = [a_Parent].[ParentID]

-- SqlCe
SELECT TOP (1)
	[parent_1].[ParentID],
	[parent_1].[Value1]
FROM
	[Parent] [parent_1]
WHERE
	[parent_1].[ParentID] < 2

