BeforeExecute
-- SqlServer.2005

DELETE [p]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT 
			*
		FROM
			[Child] [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID]
	)

