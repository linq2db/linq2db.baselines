BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	(
		SELECT
			Count(*)
		FROM
			[GetParentByID]([p].[ParentID]) [t1]
	)
FROM
	[Parent] [p]

