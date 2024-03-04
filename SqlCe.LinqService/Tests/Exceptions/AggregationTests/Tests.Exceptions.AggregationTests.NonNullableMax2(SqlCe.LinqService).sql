BeforeExecute
-- SqlCe

SELECT
	[t1].[Max_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				Max([a_Children].[ParentID]) as [Max_1]
			FROM
				[Child] [a_Children]
			WHERE
				[a_Children].[ParentID] < 0 AND [p].[ParentID] = [a_Children].[ParentID]
		) [t1]

