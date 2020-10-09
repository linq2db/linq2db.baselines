BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			[GetParentByID]([p].[ParentID]) [t1]
	)
FROM
	[Parent] [p]

