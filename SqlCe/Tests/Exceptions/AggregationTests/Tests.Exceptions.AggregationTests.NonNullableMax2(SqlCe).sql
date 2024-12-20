BeforeExecute
-- SqlCe

SELECT
	[t1].[MAX_1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				MAX([a_Children].[ParentID]) as [MAX_1]
			FROM
				[Child] [a_Children]
			WHERE
				[a_Children].[ParentID] < 0 AND [p].[ParentID] = [a_Children].[ParentID]
		) [t1]

