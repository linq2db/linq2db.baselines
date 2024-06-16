BeforeExecute
-- SqlCe

SELECT
	[gr_1].[ID],
	[gr_1].[ID] + 1 as [c1]
FROM
	(
		SELECT
			Coalesce([gr].[Value1], [c_1].[ChildID]) as [ID]
		FROM
			[Parent] [gr]
				INNER JOIN [Child] [c_1] ON [gr].[ParentID] = [c_1].[ParentID]
	) [gr_1]
GROUP BY
	[gr_1].[ID]

