BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

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

