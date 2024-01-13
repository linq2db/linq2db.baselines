BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[Value1],
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children]
		WHERE
			[p].[ParentID] = [a_Children].[ParentID]
	),
	(
		SELECT
			Count(*)
		FROM
			[Child] [a_Children_1]
		WHERE
			[a_Children_1].[ParentID] = [p].[ParentID] AND [p].[ParentID] = [a_Children_1].[ParentID]
	)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] <> 5

