BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[ParentID],
	[x].[ChildID]
FROM
	[Child] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					Max([x_1].[ChildID]) as [Max_1]
				FROM
					[Child] [x_1]
				GROUP BY
					[x_1].[ParentID]
			) [y]
		WHERE
			[y].[Max_1] = [x].[ChildID]
	)

