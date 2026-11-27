-- SqlServer.2022.MS SqlServer.2022
SELECT
	IIF(NOT EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			[p].[Value1] IS NOT NULL AND [p].[Value1] <= 0
	), 1, 0)

