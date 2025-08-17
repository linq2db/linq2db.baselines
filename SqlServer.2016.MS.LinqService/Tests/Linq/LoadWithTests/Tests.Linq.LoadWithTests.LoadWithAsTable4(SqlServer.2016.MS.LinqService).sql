BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID],
	[a_Parent].[ParentID],
	[a_Parent].[Value1]
FROM
	(
		SELECT TOP (1)
			[t].[ParentID]
		FROM
			[Parent] [t]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]
		LEFT JOIN [Parent] [a_Parent] ON [d].[ParentID] = [a_Parent].[ParentID]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT TOP (1)
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]

