-- SqlServer.Contained SqlServer.2025
SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			[p].[Value1] IS NOT NULL AND [p].[Value1] > 1
	), 1, 0)

