BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[g_2].[c1]
FROM
	(
		SELECT
			CASE
				WHEN (
					SELECT
						AVG([a_Children_1].[ParentID])
					FROM
						[Child] [a_Children_1]
					WHERE
						[g_1].[ParentID] = [a_Children_1].[ParentID]
				) > 3
					THEN 1
				ELSE 0
			END as [c1]
		FROM
			(
				SELECT
					(
						SELECT
							COUNT(*)
						FROM
							[Child] [a_Children]
						WHERE
							[p].[ParentID] = [a_Children].[ParentID]
					) as [COUNT_1],
					[p].[ParentID]
				FROM
					[Parent] [p]
			) [g_1]
		WHERE
			[g_1].[COUNT_1] > 0
	) [g_2]
GROUP BY
	[g_2].[c1]

