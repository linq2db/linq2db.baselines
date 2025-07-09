BeforeExecute
-- SqlServer.2014

SELECT
	[m_2].[ParentID],
	[m_2].[ChildID],
	[m_2].[c1] % 2,
	[m_2].[c1]
FROM
	(
		SELECT
			[m_1].[ChildID],
			ROW_NUMBER() OVER (ORDER BY [m_1].[ChildID] DESC) - 1 as [c1],
			[a_Parent].[ParentID]
		FROM
			[Child] [m_1]
				INNER JOIN [Parent] [a_Parent] ON [m_1].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[m_1].[ParentID] > 0
	) [m_2]
ORDER BY
	[m_2].[ChildID] DESC

BeforeExecute
-- SqlServer.2014

SELECT
	[m_2].[ParentID],
	[m_2].[ChildID],
	[m_2].[c1] % 2,
	[m_2].[c1]
FROM
	(
		SELECT
			[m_1].[ChildID],
			ROW_NUMBER() OVER (ORDER BY [m_1].[ChildID] DESC) - 1 as [c1],
			[a_Parent].[ParentID]
		FROM
			[Child] [m_1]
				INNER JOIN [Parent] [a_Parent] ON [m_1].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[m_1].[ParentID] > 0
	) [m_2]
ORDER BY
	[m_2].[ChildID] DESC

