BeforeExecute
-- SqlServer.2022

SELECT
	Count(*)
FROM
	[Parent] [p]
		LEFT JOIN [Child] [o] ON [p].[ParentID] = [o].[ParentID]

