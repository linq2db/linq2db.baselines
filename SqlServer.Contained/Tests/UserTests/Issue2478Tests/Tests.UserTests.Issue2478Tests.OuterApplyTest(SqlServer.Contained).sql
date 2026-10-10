-- SqlServer.Contained SqlServer.2019
SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]

-- SqlServer.Contained SqlServer.2019
SELECT
	COUNT(*)
FROM
	[Parent] [t1]

