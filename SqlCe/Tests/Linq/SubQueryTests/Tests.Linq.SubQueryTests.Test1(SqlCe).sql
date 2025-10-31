BeforeExecute
-- SqlCe

SELECT
	[t1].[Max_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				MAX([ch].[ChildID]) as [Max_1]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ParentID] = [p].[ParentID]
		) [t1]
WHERE
	[p].[ParentID] <> 5

