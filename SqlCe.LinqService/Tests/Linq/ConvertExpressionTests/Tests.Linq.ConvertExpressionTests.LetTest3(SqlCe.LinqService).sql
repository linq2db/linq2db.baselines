BeforeExecute
-- SqlCe

SELECT
	[t2].[ParentID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT TOP (1)
				[t1].[ParentID]
			FROM
				[Child] [t1]
		) [t2] ON 1=1

