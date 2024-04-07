BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[p_1].[i],
	[p_1].[ParentID],
	[p_1].[Value_1]
FROM
	(
		SELECT
			[p].[Value1] as [Value_1],
			IIF([t1].[item] = 0, NULL, [p].[ParentID]) as [ID],
			[t1].[item] as [i],
			[p].[ParentID]
		FROM
			[Parent] [p],
			(VALUES
				(0), (1)
			) [t1]([item])
	) [p_1]
WHERE
	([p_1].[ID] = [p_1].[Value_1] OR [p_1].[ID] IS NULL AND [p_1].[Value_1] IS NULL)

