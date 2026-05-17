-- SqlCe

SELECT
	[p].[ParentID],
	[t1].[Count_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [Count_1]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID] AND CAST([a_Children].[ChildID] AS Decimal(18, 10)) <> 0
		) [t1]
WHERE
	[p].[ParentID] <> 5

