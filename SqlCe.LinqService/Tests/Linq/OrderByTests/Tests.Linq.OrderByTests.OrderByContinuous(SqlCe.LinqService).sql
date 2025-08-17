BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID]
		) [t1]
		INNER JOIN [Parent] [pp] ON [p].[Value1] = [pp].[Value1]
ORDER BY
	[pp].[ParentID],
	[t1].[COUNT_1]

