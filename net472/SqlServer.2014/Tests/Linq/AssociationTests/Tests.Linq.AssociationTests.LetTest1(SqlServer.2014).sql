BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT 
	[p].[ParentID], 
	(
		SELECT 
			Count(*)
		FROM
			[Child] [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID]
	)
FROM
	[Parent] [p]

