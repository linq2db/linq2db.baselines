BeforeExecute
-- SqlCe

SELECT
	[t1].[Count_1]
FROM
	[Child] [c_1]
		OUTER APPLY (
			SELECT
				Count(*) as [Count_1]
			FROM
				[GrandChild] [g_1]
			WHERE
				[g_1].[ChildID] = [c_1].[ChildID]
		) [t1]

