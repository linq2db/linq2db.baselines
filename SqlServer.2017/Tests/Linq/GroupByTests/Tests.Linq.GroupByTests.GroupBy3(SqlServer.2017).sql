BeforeExecute
-- SqlServer.2017

SELECT
	[gr_1].[c1]
FROM
	(
		SELECT
			Coalesce([gr].[Value1], [c_1].[ChildID]) as [c1]
		FROM
			[Parent] [gr]
				INNER JOIN [Child] [c_1] ON [gr].[ParentID] = [c_1].[ParentID]
	) [gr_1]
GROUP BY
	[gr_1].[c1]

