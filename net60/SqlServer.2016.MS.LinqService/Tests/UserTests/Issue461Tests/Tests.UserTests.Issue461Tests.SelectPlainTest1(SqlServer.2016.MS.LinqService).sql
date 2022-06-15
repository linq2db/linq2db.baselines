BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ParentID],
	[t1].[c1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[c_1].[ParentID] + 1 as [c1],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		) [t1]

