BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	Max([t2].[cnt])
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					[Child] [t1]
				WHERE
					[p].[ParentID] = [t1].[ParentID]
			) as [cnt]
		FROM
			[Parent] [p]
	) [t2]

