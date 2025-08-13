BeforeExecute
-- SqlServer.2008

SELECT
	[t2].[COUNT_1] + [t2].[COUNT_1]
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
			) as [COUNT_1]
		FROM
			[Parent] [t1]
	) [t2]

