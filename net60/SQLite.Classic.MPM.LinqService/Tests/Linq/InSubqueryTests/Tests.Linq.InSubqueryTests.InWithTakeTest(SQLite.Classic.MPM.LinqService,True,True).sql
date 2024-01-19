BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[c_1].[ParentID],
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					[param].[ParentID]
				FROM
					[Parent] [param]
				LIMIT 100
			) [param_1]
		WHERE
			[param_1].[ParentID] = [c_1].[ParentID]
	)

