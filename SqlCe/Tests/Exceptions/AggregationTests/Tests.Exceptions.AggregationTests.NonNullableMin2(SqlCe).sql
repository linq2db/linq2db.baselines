-- SqlCe

SELECT
	[t1].[max_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				MIN([a_Children].[ParentID]) as [max_1]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] < 0
		) [t1]

