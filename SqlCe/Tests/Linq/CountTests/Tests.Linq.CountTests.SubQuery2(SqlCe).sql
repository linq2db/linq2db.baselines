-- SqlCe

SELECT
	CASE
		WHEN [p].[Value1] IS NULL THEN [t1].[COUNT_1]
		ELSE [t2].[COUNT_1]
	END as [c1]
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
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [c_1]
			WHERE
				[p].[ParentID] = [c_1].[ParentID]
		) [t2]
WHERE
	[p].[ParentID] <> 5

