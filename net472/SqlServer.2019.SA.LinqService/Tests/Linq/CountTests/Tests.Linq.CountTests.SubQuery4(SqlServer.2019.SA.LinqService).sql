BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Parent] [p1]
		WHERE
			[p1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]

