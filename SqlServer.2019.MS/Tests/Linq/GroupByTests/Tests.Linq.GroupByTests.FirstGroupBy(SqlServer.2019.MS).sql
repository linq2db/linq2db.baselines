-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	(
		SELECT DISTINCT
			[gr].[ParentID] as [Key_1]
		FROM
			[Child] [gr]
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

