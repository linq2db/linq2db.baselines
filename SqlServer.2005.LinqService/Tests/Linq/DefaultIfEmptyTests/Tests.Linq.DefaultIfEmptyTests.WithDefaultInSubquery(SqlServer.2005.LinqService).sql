BeforeExecute
-- SqlServer.2005 (asynchronously)

SELECT
	(
		SELECT
			SUM([t2].[ParentID_1])
		FROM
			(
				SELECT
					1 as [cond],
					[d].[ParentID] as [cond_1],
					[d].[ChildID],
					-100 as [ParentID],
					CASE
						WHEN [d].[ParentID] IS NOT NULL THEN [d].[ParentID]
						ELSE -100
					END as [ParentID_1]
				FROM
					(
						SELECT
							-100 as [ParentID]
					) [t1]
						LEFT JOIN [Child] [d] ON [p].[ParentID] = [d].[ParentID]
			) [t2]
	)
FROM
	[Parent] [p]

