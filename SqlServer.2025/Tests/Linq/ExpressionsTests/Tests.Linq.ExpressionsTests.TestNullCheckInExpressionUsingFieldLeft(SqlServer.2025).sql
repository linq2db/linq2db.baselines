-- SqlServer.2025 SqlServer.2022

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			[p].[Value1] IS NULL AND [p].[ParentID] = IIF([p].[Value1] IS NULL, NULL, CAST(N'SHOULD NOT BE CALLED' AS INT))
	), 1, 0)

