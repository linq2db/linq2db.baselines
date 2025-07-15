BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[Value1]
FROM
	(
		SELECT DISTINCT
			[a_Parent].[ParentID]
		FROM
			[Child] [ch]
				LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
	) [m_1]
		INNER JOIN [Parent] [d] ON [d].[ParentID] = [m_1].[ParentID]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[a_Parent].[ParentID]
FROM
	[Child] [ch]
		LEFT JOIN [Parent] [a_Parent] ON [ch].[ParentID] = [a_Parent].[ParentID]
ORDER BY
	[ch].[ChildID]

