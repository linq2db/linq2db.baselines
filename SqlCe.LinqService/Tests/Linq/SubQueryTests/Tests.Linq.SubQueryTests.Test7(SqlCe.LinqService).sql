BeforeExecute
-- SqlCe

SELECT
	[t1].[COUNT_1]
FROM
	[Child] [c_1]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[GrandChild] [g_1]
			WHERE
				[g_1].[ChildID] = [c_1].[ChildID] AND [g_1].[ChildID] IS NOT NULL
		) [t1]

