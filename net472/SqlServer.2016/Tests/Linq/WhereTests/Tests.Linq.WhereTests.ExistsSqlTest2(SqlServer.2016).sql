BeforeExecute
-- SqlServer.2016 SqlServer.2012

DELETE [p]
FROM
	[Parent] [p]
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			[Child] [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID]
	))

