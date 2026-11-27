-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]

-- SqlServer.2008
SELECT
	(
		SELECT TOP (1)
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
	)

