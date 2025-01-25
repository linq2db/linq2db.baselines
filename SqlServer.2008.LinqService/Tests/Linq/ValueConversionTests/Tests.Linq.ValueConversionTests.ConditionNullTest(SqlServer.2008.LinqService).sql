BeforeExecute
-- SqlServer.2008

SELECT
	[p_1].[ID],
	[p_1].[Value_1]
FROM
	(
		SELECT
			CASE
				WHEN [i].[item] = 0 THEN NULL
				ELSE [p].[ParentID]
			END as [ID],
			[p].[Value1] as [Value_1]
		FROM
			[Parent] [p]
				CROSS JOIN (VALUES
					(0), (1)
				) [i]([item])
	) [p_1]
WHERE
	([p_1].[ID] = [p_1].[Value_1] OR [p_1].[ID] IS NULL AND [p_1].[Value_1] IS NULL)

