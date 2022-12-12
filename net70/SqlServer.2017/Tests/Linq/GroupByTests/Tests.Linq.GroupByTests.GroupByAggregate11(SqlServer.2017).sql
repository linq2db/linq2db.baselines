BeforeExecute
-- SqlServer.2017

SELECT
	[t3].[Key_1]
FROM
	(
		SELECT
			[t2].[Key_1]
		FROM
			(
				SELECT
					IIF((
						SELECT
							Avg([c_1].[ParentID])
						FROM
							[Child] [c_1]
						WHERE
							[p].[ParentID] = [c_1].[ParentID]
					) > 3, 1, 0) as [Key_1]
				FROM
					[Parent] [p]
				WHERE
					(
						SELECT
							Count(*)
						FROM
							[Child] [t1]
						WHERE
							[p].[ParentID] = [t1].[ParentID]
					) > 0
			) [t2]
	) [t3]
GROUP BY
	[t3].[Key_1]

