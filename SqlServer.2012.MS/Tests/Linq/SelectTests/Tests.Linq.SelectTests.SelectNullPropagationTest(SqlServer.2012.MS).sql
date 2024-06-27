BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	IIF([q].[ParentID] IS NOT NULL, [q].[ParentID], 0)
FROM
	[Parent] [q]

