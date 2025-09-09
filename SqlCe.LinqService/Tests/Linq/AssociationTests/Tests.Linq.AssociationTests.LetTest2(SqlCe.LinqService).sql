BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t].[ParentID],
	[t1].[COUNT_1]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [a_Children]
			WHERE
				[t].[ParentID] = [a_Children].[ParentID]
		) [t1]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t].[ParentID],
	[t1].[COUNT_1]
FROM
	[Parent] [t]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[Child] [a_Children]
			WHERE
				[t].[ParentID] = [a_Children].[ParentID]
		) [t1]

