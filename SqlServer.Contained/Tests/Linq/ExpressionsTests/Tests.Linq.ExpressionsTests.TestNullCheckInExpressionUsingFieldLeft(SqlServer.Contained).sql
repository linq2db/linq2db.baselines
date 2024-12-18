BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
		WHERE
			[p].[Value1] IS NULL AND [p].[ParentID] = IIF([p].[Value1] IS NULL, NULL, CAST(N'SHOULD NOT BE CALLED' AS INT)) AND
			IIF([p].[Value1] IS NULL, NULL, CAST(N'SHOULD NOT BE CALLED' AS INT)) IS NOT NULL
	), 1, 0)

