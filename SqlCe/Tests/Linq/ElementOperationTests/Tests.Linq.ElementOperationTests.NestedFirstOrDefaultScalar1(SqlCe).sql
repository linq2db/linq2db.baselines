-- SqlCe

SELECT
	[t2].[ChildID]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT TOP (1)
				[t1].[ChildID]
			FROM
				[Child] [t1]
		) [t2] ON 1=1

