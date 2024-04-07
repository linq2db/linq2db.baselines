BeforeExecute
-- SqlServer.2019

SELECT
	Count(*)
FROM
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]

