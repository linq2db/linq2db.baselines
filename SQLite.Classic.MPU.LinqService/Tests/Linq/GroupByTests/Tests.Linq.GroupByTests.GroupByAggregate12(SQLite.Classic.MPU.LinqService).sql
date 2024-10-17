BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			CASE
				WHEN (
					SELECT
						COUNT(*)
					FROM
						[Child] [a_Children]
					WHERE
						[g_1].[ParentID] = [a_Children].[ParentID]
				) > 0 AND (
					SELECT
						AVG([a_Children_1].[ParentID])
					FROM
						[Child] [a_Children_1]
					WHERE
						[g_1].[ParentID] = [a_Children_1].[ParentID]
				) > 3
					THEN 1
				ELSE 0
			END as [Key_1]
		FROM
			[Parent] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

