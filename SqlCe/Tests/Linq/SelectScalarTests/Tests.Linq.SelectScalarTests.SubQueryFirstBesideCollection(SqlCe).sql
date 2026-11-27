-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]

-- SqlCe
SELECT
	[t2].[FirstId]
FROM
	(
		SELECT
			1 as [c1]
	) [t3]
		CROSS JOIN (
			SELECT TOP (1)
				[t1].[ParentID] as [FirstId]
			FROM
				[Parent] [t1]
			ORDER BY
				[t1].[ParentID]
		) [t2]

