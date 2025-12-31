-- SqlServer.2025

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	(
		SELECT
			[gr].[ParentID] as [Key_1]
		FROM
			[Child] [gr]
		GROUP BY
			[gr].[ParentID]
	) [gr_1]
		CROSS APPLY (
			SELECT TOP (1)
				[t].[ParentID],
				[t].[ChildID]
			FROM
				[Child] [t]
			WHERE
				[gr_1].[Key_1] = [t].[ParentID]
			ORDER BY
				[t].[ChildID] DESC
		) [t1]

