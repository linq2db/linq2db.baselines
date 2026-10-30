-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[p].[ParentID],
	Coalesce((
		SELECT
			GROUP_CONCAT(CASE
				WHEN [t1].[Ids] <> '11' THEN [t1].[Ids]
				ELSE NULL
			END, ',')
		FROM
			(
				SELECT DISTINCT
					CAST([c_1].[ChildID] AS NVarChar(11)) as [Ids]
				FROM
					[Child] [c_1]
				WHERE
					[c_1].[ParentID] = [p].[ParentID]
			) [t1]
	), '')
FROM
	[Parent] [p]
ORDER BY
	[p].[ParentID]

