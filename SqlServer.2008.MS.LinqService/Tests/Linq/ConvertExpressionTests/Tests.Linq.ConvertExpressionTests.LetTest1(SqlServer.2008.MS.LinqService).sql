BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[c1]
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
			) as [c1]
		FROM
			[Parent] [p]
	) [t1]
WHERE
	[t1].[c1] IS NOT NULL

