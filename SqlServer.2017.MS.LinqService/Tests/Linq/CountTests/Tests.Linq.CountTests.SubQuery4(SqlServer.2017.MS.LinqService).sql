BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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

