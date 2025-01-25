BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

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
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT TOP (1)
	[x].[ParentID]
FROM
	[Parent] [x]
WHERE
	[x].[ParentID] = 1

