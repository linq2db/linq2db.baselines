﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	(
		SELECT
			[c_1].[ParentID]
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID] AND [c_1].[ChildID] > -100 AND
			[c_1].[ParentID] > 0
		ORDER BY
			[c_1].[ChildID]
		LIMIT 1
	),
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c_2]
			WHERE
				[c_2].[ParentID] = [p].[ParentID] AND [c_2].[ChildID] > -100
		)
			THEN 1
		ELSE 0
	END,
	(
		SELECT
			Count(*)
		FROM
			[Child] [c_3]
		WHERE
			[c_3].[ParentID] = [p].[ParentID] AND [c_3].[ChildID] > -100
	),
	(
		SELECT
			[c_4].[ParentID]
		FROM
			[Child] [c_4]
		WHERE
			[c_4].[ParentID] = [p].[ParentID] AND [c_4].[ChildID] > -100
		ORDER BY
			[c_4].[ChildID]
		LIMIT 1
	),
	(
		SELECT
			[c_5].[ChildID]
		FROM
			[Child] [c_5]
		WHERE
			[c_5].[ParentID] = [p].[ParentID] AND [c_5].[ChildID] > -100
		ORDER BY
			[c_5].[ChildID]
		LIMIT 1
	)
FROM
	[Parent] [p]

