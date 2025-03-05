BeforeExecute
-- SqlCe

SELECT
	[t2].[ParentID],
	[t2].[Value1]
FROM
	(
		SELECT
			[p].[Value1],
			[p].[ParentID]
		FROM
			[Parent] [p]
	) [t2]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [a_Children]
			WHERE
				[t2].[ParentID] = [a_Children].[ParentID]
		) [t1]
		INNER JOIN [Parent] [pp] ON [t2].[Value1] = [pp].[Value1]
ORDER BY
	[pp].[ParentID],
	[t1].[COUNT_1]

