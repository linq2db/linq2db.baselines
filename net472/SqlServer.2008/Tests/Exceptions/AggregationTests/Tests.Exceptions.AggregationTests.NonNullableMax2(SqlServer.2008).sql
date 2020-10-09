BeforeExecute
-- SqlServer.2008

SELECT 
	(
		SELECT 
			Max([_].[ParentID])
		FROM
			[Child] [_]
		WHERE
			[p].[ParentID] = [_].[ParentID] AND [_].[ParentID] < 0
	)
FROM
	[Parent] [p]

