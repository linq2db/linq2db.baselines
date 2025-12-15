-- SqlServer.2025

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[GetParentByID]([p].[ParentID]) [t1]
	)
FROM
	[Parent] [p]

