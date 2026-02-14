-- SqlServer.2022.MS SqlServer.2022

SELECT
	[o].[ParentID],
	(
		SELECT
			COUNT(*) as [CountResult]
		FROM
			[Child] [a_Children]
		WHERE
			[o].[ParentID] = [a_Children].[ParentID]
	),
	(
		SELECT
			SUM([a_Children_1].[ParentID]) as [SumResult]
		FROM
			[Child] [a_Children_1]
		WHERE
			[o].[ParentID] = [a_Children_1].[ParentID]
	)
FROM
	[Parent] [o]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[Parent] [o]

-- SqlServer.2022.MS SqlServer.2022

SELECT
	[x].[ParentID],
	[x].[CountResult],
	[x].[SumResult]
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*) as [CountResult]
				FROM
					[Child] [a_Children]
				WHERE
					[o].[ParentID] = [a_Children].[ParentID]
			) as [CountResult],
			[o].[ParentID],
			(
				SELECT
					SUM([a_Children_1].[ParentID]) as [SumResult]
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

