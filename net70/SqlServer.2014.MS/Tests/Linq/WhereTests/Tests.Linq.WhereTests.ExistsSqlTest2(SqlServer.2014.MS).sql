BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
	) AND
	[p].[ParentID] > 100

