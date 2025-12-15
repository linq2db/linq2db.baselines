-- SqlServer.SA.MS SqlServer.2019

SELECT
	[o].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [a_Children]
		WHERE
			[o].[ParentID] = [a_Children].[ParentID]
	),
	(
		SELECT
			SUM([a_Children_1].[ParentID])
		FROM
			[Child] [a_Children_1]
		WHERE
			[o].[ParentID] = [a_Children_1].[ParentID]
	)
FROM
	[Parent] [o]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Parent] [o]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[x].[ParentID],
	[x].[CountResult],
	[x].[SumResult]
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					[Child] [a_Children]
				WHERE
					[o].[ParentID] = [a_Children].[ParentID]
			) as [CountResult],
			[o].[ParentID],
			(
				SELECT
					SUM([a_Children_1].[ParentID])
				FROM
					[Child] [a_Children_1]
				WHERE
					[o].[ParentID] = [a_Children_1].[ParentID]
			) as [SumResult]
		FROM
			[Parent] [o]
	) [x]
WHERE
	[x].[CountResult] > 0

