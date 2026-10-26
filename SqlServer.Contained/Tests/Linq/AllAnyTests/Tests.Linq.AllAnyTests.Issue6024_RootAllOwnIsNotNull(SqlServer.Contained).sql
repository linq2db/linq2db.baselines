-- SqlServer.Contained SqlServer.2025
SELECT
	IIF(NOT EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			[p].[Value1] IS NOT NULL AND [p].[Value1] <= 0
	), 1, 0)

