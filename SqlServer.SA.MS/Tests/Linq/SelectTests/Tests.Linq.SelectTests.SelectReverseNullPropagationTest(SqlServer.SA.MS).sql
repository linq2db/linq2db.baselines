BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	IIF([q].[ParentID] IS NOT NULL, [q].[ParentID], 0)
FROM
	[Parent] [q]

