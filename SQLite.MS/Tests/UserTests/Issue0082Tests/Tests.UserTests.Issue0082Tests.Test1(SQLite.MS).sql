BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [od]
		WHERE
			[t1].[ParentID] = [od].[ParentID]
	),
	(
		SELECT
			Sum([od_1].[ParentID])
		FROM
			[Child] [od_1]
		WHERE
			[t1].[ParentID] = [od_1].[ParentID]
	)
FROM
	[Parent] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Parent] [t1]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x_1].[ParentID],
	[x_1].[CountResult],
	[x_1].[Sum_1]
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					[Child] [od]
				WHERE
					[x].[ParentID] = [od].[ParentID]
			) as [CountResult],
			[x].[ParentID],
			(
				SELECT
					Sum([od_1].[ParentID])
				FROM
					[Child] [od_1]
				WHERE
					[x].[ParentID] = [od_1].[ParentID]
			) as [Sum_1]
		FROM
			[Parent] [x]
	) [x_1]
WHERE
	[x_1].[CountResult] > 0

