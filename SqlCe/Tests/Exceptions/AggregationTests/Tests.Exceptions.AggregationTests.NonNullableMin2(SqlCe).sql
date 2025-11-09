-- SqlCe

SELECT
	[t1].[Min_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				MIN([a_Children].[ParentID]) as [Min_1]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID] AND [a_Children].[ParentID] < 0
		) [t1]

