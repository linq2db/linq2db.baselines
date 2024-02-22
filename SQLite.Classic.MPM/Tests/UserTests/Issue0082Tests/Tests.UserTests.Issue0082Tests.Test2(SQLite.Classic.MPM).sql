BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[o].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[o].[ParentID] = [a_Children].[ParentID]
	),
	(
		SELECT
			Sum([a_Children_1].[ParentID])
		FROM
			[Child] [a_Children_1]
		WHERE
			[o].[ParentID] = [a_Children_1].[ParentID]
	)
FROM
	[Parent] [o]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Parent] [o]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[x].[ParentID] = [a_Children].[ParentID]
	),
	(
		SELECT
			Sum([a_Children_1].[ParentID])
		FROM
			[Child] [a_Children_1]
		WHERE
			[x].[ParentID] = [a_Children_1].[ParentID]
	)
FROM
	[Parent] [x]
WHERE
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[x].[ParentID] = [a_Children].[ParentID]
	) > 0

