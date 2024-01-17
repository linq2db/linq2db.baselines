BeforeExecute
-- SqlServer.2022

SELECT
	(
		SELECT
			Count(*)
		FROM
			[GetParentByID]([p].[ParentID]) [t1]
	)
FROM
	[Parent] [p]

