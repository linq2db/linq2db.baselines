BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[m_1].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT TOP (1)
			[x].[ParentID]
		FROM
			[Parent] [x]
		WHERE
			[x].[ParentID] = 1
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (1)
	[x].[ParentID]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = 1

