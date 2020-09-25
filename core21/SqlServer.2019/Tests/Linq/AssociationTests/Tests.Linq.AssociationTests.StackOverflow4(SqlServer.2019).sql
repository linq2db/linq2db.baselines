BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Parent] [t1]
		WHERE
			[p].[ParentID] = [t1].[Value1]
	)
FROM
	[Parent] [p]

