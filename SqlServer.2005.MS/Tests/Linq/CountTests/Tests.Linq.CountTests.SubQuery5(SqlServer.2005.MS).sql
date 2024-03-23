BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Parent] [p1]
		WHERE
			[p1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]

