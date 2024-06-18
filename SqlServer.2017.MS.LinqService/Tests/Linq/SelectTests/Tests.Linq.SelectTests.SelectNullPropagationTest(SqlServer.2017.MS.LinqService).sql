BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	IIF([q].[ParentID] IS NOT NULL, [q].[ParentID], 0)
FROM
	[Parent] [q]

