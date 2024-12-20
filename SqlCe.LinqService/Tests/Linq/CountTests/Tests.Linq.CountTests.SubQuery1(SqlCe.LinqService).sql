BeforeExecute
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
				[a_Children].[ParentID] = [p].[ParentID] AND CAST([a_Children].[ChildID] AS Decimal(38, 17)) <> 0 AND
				[p].[ParentID] = [a_Children].[ParentID]
		) [t1]
WHERE
	[p].[ParentID] <> 5

