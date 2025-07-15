BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

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

