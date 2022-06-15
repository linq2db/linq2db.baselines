BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[ParentID]
FROM
	[Parent] [p_1]
		OUTER APPLY (
			SELECT TOP (1)
				[p].[ParentID]
			FROM
				[Child] [p]
			WHERE
				[p_1].[ParentID] = [p].[ParentID]
		) [t1]
WHERE
	(
		SELECT TOP (1)
			1
		FROM
			[Child] [t2]
		WHERE
			[p_1].[ParentID] = [t2].[ParentID]
	) IS NOT NULL

