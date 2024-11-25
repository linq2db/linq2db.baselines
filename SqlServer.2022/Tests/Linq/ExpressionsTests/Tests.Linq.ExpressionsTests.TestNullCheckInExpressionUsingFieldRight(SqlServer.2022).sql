BeforeExecute
-- SqlServer.2022

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Parent] [p]
		WHERE
			[p].[Value1] IS NULL AND [p].[ParentID] = IIF([p].[Value1] IS NOT NULL, CAST(N'SHOULD NOT BE CALLED' AS INT), NULL)
	), 1, 0)

