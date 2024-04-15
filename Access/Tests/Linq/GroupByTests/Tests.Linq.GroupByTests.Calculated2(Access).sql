BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[c1]
FROM
	(
		SELECT
			[g_2].[c1] + '2' as [c1]
		FROM
			(
				SELECT
					IIF([g_1].[ParentID] > 2, IIF([g_1].[ParentID] > 3, '1', '2'), '3') as [c1]
				FROM
					[Child] [g_1]
			) [g_2]
		GROUP BY
			[g_2].[c1]
	) [p]
WHERE
	[p].[c1] = '22'

