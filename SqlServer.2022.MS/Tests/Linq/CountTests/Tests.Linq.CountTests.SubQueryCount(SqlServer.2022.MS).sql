-- SqlServer.2022.MS SqlServer.2022

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[GetParentByID]([p].[ParentID]) [t1]
	)
FROM
	[Parent] [p]

