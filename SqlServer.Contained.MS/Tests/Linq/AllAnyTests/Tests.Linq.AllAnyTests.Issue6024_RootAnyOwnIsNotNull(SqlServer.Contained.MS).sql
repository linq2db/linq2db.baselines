-- SqlServer.Contained.MS SqlServer.2019
SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			[p].[Value1] IS NOT NULL AND [p].[Value1] > 1
	), 1, 0)

