BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[m_1].[ParentID],
	[d].[ChildID],
	[d].[ParentID]
FROM
	(
		SELECT DISTINCT
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

