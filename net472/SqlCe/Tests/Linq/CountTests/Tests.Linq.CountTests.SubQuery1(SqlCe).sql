BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID],
	[t1].[Count_1]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT
				Count(*) as [Count_1],
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
			WHERE
				(Convert(Decimal(29,10), [c_1].[ChildID]) IS NULL OR Convert(Decimal(29,10), [c_1].[ChildID]) <> 0)
			GROUP BY
				[c_1].[ParentID]
		) [t1] ON [p].[ParentID] = [t1].[ParentID] AND [t1].[ParentID] = [p].[ParentID]
WHERE
	[p].[ParentID] <> 5

