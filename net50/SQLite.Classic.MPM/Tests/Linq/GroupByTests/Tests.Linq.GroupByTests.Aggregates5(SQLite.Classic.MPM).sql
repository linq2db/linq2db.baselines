BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_1]
		WHERE
			[t1].[ParentID] = [c_1].[ParentID] AND [c_1].[ChildID] > 30
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

