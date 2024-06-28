BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	IIF([q].[ParentID] IS NOT NULL, [q].[ParentID], 0)
FROM
	[Parent] [q]

