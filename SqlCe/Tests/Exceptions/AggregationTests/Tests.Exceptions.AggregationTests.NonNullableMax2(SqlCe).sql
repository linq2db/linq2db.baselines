BeforeExecute
-- SqlCe

SELECT
	[t1].[Max_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				MAX([a_Children].[ParentID]) as [Max_1]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] < 0
		) [t1]

