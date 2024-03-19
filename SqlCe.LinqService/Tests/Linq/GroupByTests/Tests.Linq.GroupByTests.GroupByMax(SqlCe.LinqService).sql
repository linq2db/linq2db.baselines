BeforeExecute
-- SqlCe

SELECT
	[t1].[MAX_1]
FROM
	(
		SELECT
			[g_1].[ChildID]
		FROM
			[Child] [g_1]
		GROUP BY
			[g_1].[ChildID]
	) [g_2]
		OUTER APPLY (
			SELECT
				MAX([ch].[ParentID]) as [MAX_1]
			FROM
				[Child] [ch]
			WHERE
				[g_2].[ChildID] = [ch].[ChildID]
		) [t1]

