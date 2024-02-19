BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[c_1].[ChildID],
	[c_1].[ParentID],
	(
		SELECT
			Count(*)
		FROM
			[Child] [t1]
		WHERE
			[t1].[ParentID] = [c_1].[ParentID]
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c2]
			WHERE
				[c2].[ParentID] = [c_1].[ParentID]
		)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				[Child] [c2_1]
			WHERE
				[c2_1].[ParentID] <> [c_1].[ParentID]
		)
			THEN 1
		ELSE 0
	END,
	(
		SELECT
			Min([c2_2].[ChildID])
		FROM
			[Child] [c2_2]
		WHERE
			[c2_2].[ParentID] = [c_1].[ParentID]
	),
	(
		SELECT
			Max([c2_3].[ChildID])
		FROM
			[Child] [c2_3]
		WHERE
			[c2_3].[ParentID] = [c_1].[ParentID]
	)
FROM
	[Child] [c_1]
		INNER JOIN [Parent] [parent_1] ON [c_1].[ParentID] = [parent_1].[ParentID]
WHERE
	[parent_1].[Value1] < 7

