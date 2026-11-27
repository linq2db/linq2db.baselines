-- SqlServer.2022.MS SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]
ORDER BY
	[t1].[ChildID]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	(
		SELECT TOP (1)
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		ORDER BY
			[t1].[ParentID]
	)

