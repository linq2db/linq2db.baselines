-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [t1].[ParentID]
	)
FROM
	[Parent] [t1]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Parent] [t1]

