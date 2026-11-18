-- SqlServer.2022
SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			[p].[Value1] IS NOT NULL AND [p].[Value1] > 1
	), 1, 0)

