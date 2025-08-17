BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	[t1].[cond]
FROM
	(
		SELECT
			(
				SELECT TOP (1)
					[a_Children].[ParentID]
				FROM
					[Child] [a_Children]
				WHERE
					[p].[ParentID] = [a_Children].[ParentID]
			) as [cond]
		FROM
			[Parent] [p]
	) [t1]
WHERE
	[t1].[cond] IS NOT NULL

