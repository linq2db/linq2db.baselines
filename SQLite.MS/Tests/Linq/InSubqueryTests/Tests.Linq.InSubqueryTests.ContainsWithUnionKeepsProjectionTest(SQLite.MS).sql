-- SQLite.MS SQLite

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					[p_1].[ParentID] as [set_col_0__]
				FROM
					[Parent] [p_1]
				WHERE
					[p_1].[ParentID] <= 2
				UNION
				SELECT
					[c_1].[ParentID] as [set_col_0__]
				FROM
					[Child] [c_1]
				WHERE
					[c_1].[ParentID] >= 3
			) [t1]
		WHERE
			[p].[ParentID] = [t1].[set_col_0__]
	)
ORDER BY
	[p].[ParentID]

