BeforeExecute
-- SqlCe

SELECT
	[t1].[SUM_1]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT
				SUM([a_Children].[ChildID]) as [SUM_1]
			FROM
				[Child] [a_Children]
			WHERE
				[a_Children].[ParentID] > 1 AND [a_Children].[ParentID] < 10 AND
				[t].[ParentID] = [a_Children].[ParentID]
		) [t1]

