BeforeExecute
-- SqlCe

SELECT
	[t1].[MAX_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				MAX([ch].[ChildID]) as [MAX_1]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ParentID] = [p].[ParentID] AND [ch].[ChildID] > 1
		) [t1]
WHERE
	[p].[ParentID] <> 5

