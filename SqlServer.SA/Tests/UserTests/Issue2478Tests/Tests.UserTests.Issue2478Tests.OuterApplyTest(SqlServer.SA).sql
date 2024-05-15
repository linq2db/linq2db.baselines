BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p].[ParentID],
	(
		SELECT
			COUNT(*)
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	)
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			[Parent] [p]
	) [t1]

