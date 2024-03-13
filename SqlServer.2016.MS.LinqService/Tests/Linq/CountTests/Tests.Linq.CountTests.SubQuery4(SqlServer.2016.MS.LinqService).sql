BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Parent] [t1]
		WHERE
			[t1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]

