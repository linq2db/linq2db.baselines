BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	[t1].[ParentID]
FROM
	[Parent] [p]
		OUTER APPLY ( 
			SELECT DISTINCT 
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID]
		) [t1]

