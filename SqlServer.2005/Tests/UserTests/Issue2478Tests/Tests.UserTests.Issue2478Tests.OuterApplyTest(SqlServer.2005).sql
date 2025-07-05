BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[ParentID],
	[t1].[cond]
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
			) as [cond]
		FROM
			[Parent] [p]
	) [t1]

BeforeExecute
-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			[Parent] [p]
	) [t1]

