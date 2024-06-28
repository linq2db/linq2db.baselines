BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[ParentID],
	IIF([t1].[Count_1] IS NULL, 0, [t1].[Count_1])
FROM
	(
		SELECT
			[p].[ParentID],
			(
				SELECT
					COUNT(*)
				FROM
					[Child] [c_1]
				WHERE
					[c_1].[ParentID] = [p].[ParentID]
			) as [Count_1]
		FROM
			[Parent] [p]
	) [t1]

BeforeExecute
-- SqlServer.2019

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			[Parent] [p]
	) [t1]

