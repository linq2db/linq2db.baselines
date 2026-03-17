-- SqlServer.2019

SELECT
	[p_1].[ID],
	[p_1].[Value1]
FROM
	(
		SELECT
			IIF([i].[item] = 0, NULL, [p].[ParentID]) as [ID],
			[p].[Value1]
		FROM
			[Parent] [p]
				CROSS JOIN (VALUES
					(0), (1)
				) [i]([item])
	) [p_1]
WHERE
	[p_1].[ID] = [p_1].[Value1] OR [p_1].[ID] IS NULL AND [p_1].[Value1] IS NULL

