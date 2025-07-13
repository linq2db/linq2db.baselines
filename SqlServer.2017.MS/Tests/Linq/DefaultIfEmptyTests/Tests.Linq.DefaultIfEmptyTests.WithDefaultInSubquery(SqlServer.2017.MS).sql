BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	(
		SELECT
			SUM([t1].[ParentID])
		FROM
			(
				SELECT
					IIF([d].[ParentID] IS NOT NULL, [d].[ParentID], -100) as [ParentID]
				FROM
					(
						SELECT
							-100 as [ParentID]
					) [c_1]
						LEFT JOIN [Child] [d] ON [p].[ParentID] = [d].[ParentID]
			) [t1]
	)
FROM
	[Parent] [p]

