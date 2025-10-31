BeforeExecute
-- SqlServer.2016

SELECT
	[t2].[Count_1] + [t2].[Count_1]
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					[Child] [c_1]
				WHERE
					[t1].[ParentID] = [c_1].[ParentID]
			) as [Count_1]
		FROM
			[Parent] [t1]
	) [t2]

