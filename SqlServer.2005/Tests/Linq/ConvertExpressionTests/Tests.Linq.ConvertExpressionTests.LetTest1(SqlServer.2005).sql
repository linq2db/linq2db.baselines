BeforeExecute
-- SqlServer.2005

SELECT
	(
		SELECT TOP (1)
			[a_Children_1].[ParentID]
		FROM
			[Child] [a_Children_1]
		WHERE
			[p].[ParentID] = [a_Children_1].[ParentID]
	)
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Children].[ParentID]
			FROM
				[Child] [a_Children]
			WHERE
				[p].[ParentID] = [a_Children].[ParentID]
		) [t1]
WHERE
	[t1].[ParentID] IS NOT NULL

