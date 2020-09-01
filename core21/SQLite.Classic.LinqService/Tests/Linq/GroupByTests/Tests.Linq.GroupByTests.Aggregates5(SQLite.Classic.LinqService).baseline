BeforeExecute
-- SQLite.Classic SQLite

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [keyParam]
		WHERE
			[t1].[ParentID] = [keyParam].[ParentID] AND [keyParam].[ChildID] > 30
	),
	(
		SELECT
			Count(*)
		FROM
			[Child] [_]
		WHERE
			[t1].[ParentID] = [_].[ParentID] AND [_].[ChildID] > 30
	),
	Count(*)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]

