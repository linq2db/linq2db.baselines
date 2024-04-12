BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[c1]
FROM
	(
		SELECT
			[g_2].[c1] + N'2' as [c1]
		FROM
			(
				SELECT
					CASE
						WHEN [g_1].[ParentID] > 2 THEN CASE
							WHEN [g_1].[ParentID] > 3 THEN N'1'
							ELSE N'2'
						END
						ELSE N'3'
					END as [c1]
				FROM
					[Child] [g_1]
			) [g_2]
		GROUP BY
			[g_2].[c1]
	) [p]
WHERE
	[p].[c1] = N'22'

