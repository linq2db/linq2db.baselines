-- SqlCe

SELECT
	[p].[ParentID],
	[t1].[COUNT_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID] AND CAST([a_Children].[ChildID] AS Decimal(18, 10)) <> 0
		) [t1]
WHERE
	[p].[ParentID] <> 5

