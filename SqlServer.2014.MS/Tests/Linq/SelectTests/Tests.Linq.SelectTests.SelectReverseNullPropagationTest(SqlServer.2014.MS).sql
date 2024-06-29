BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	IIF([q].[ParentID] IS NOT NULL, [q].[ParentID], 0)
FROM
	[Parent] [q]

