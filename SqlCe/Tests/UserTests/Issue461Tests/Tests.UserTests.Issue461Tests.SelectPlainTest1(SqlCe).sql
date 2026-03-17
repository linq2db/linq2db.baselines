-- SqlCe

SELECT
	[t1].[c1]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT TOP (1)
				[c_1].[ParentID] + 1 as [c1]
			FROM
				[Child] [c_1]
		) [t1] ON 1=1

