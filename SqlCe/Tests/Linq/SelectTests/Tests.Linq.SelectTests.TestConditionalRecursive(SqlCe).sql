BeforeExecute
-- SqlCe

SELECT
	[p].[ParentID],
	[c_2].[ParentID] as [ParentID_1]
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT TOP (1)
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		) [c_2] ON 1=1

