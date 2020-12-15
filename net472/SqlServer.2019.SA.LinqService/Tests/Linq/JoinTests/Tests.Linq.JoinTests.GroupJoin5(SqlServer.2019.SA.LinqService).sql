BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (@take)
				[ch].[ParentID],
				[ch].[ChildID]
			FROM
				[Child] [ch]
			WHERE
				[ch].[ParentID] = [p].[ParentID]
			ORDER BY
				[ch].[ChildID]
		) [t1]
WHERE
	[p].[ParentID] >= 1
ORDER BY
	[p].[ParentID]

