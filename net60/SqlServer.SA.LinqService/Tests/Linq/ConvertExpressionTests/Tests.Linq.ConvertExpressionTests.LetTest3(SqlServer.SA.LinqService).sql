BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ParentID]
FROM
	[Parent] [p_1]
		OUTER APPLY (
			SELECT TOP (1)
				[p].[ParentID]
			FROM
				[Child] [p]
		) [t1]

