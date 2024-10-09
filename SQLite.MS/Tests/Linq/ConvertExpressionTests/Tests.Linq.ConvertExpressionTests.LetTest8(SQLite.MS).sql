BeforeExecute
-- SQLite.MS SQLite

SELECT
	CASE
		WHEN (
			SELECT
				[c_2].[ParentID]
			FROM
				[Child] [c_2]
			WHERE
				[c_2].[ParentID] = [p].[ParentID] AND [c_2].[ChildID] > -100 AND
				[c_2].[ParentID] > 0
			ORDER BY
				[c_2].[ChildID]
			LIMIT 1
		) IS NULL
			THEN 0
		ELSE (
			SELECT
				[c_3].[ParentID]
			FROM
				[Child] [c_3]
			WHERE
				[c_3].[ParentID] = [p].[ParentID] AND [c_3].[ChildID] > -100 AND
				[c_3].[ParentID] > 0
			ORDER BY
				[c_3].[ChildID]
			LIMIT 1
		)
	END,
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Child] [c_4]
			WHERE
				[c_4].[ParentID] = [p].[ParentID] AND [c_4].[ChildID] > -100
		)
			THEN 1
		ELSE 0
	END,
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_5]
		WHERE
			[c_5].[ParentID] = [p].[ParentID] AND [c_5].[ChildID] > -100
	),
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				[c_1].[ParentID],
				[c_1].[ChildID],
				ROW_NUMBER() OVER (PARTITION BY [c_1].[ParentID] ORDER BY [c_1].[ChildID]) as [rn]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ChildID] > -100
		) [t1] ON [t1].[ParentID] = [p].[ParentID] AND [t1].[rn] <= 1

