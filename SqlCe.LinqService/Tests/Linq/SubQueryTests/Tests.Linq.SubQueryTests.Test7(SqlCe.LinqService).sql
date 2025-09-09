BeforeExecute
-- SqlCe (asynchronously)

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
				[g_1].[ChildID] = [c_1].[ChildID]
		) [t1]

