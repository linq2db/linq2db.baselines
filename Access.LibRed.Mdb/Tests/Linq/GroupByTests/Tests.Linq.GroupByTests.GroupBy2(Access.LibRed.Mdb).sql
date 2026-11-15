-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[gr_1].[ID],
	[gr_1].[ID] + 1
FROM
	(
		SELECT DISTINCT
			CASE
				WHEN [gr].[Value1] IS NULL THEN [c_1].[ChildID]
				ELSE [gr].[Value1]
			END as [ID]
		FROM
			[Parent] [gr]
				INNER JOIN [Child] [c_1] ON ([gr].[ParentID] = [c_1].[ParentID])
	) [gr_1]

