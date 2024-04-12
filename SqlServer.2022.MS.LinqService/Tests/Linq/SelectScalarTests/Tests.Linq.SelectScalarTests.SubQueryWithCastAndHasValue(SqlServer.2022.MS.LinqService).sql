BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[_].[ParentID],
	[_].[Value1]
FROM
	[Parent] [_]
WHERE
	(
		SELECT TOP (1)
			IIF([r].[Value1] IS NOT NULL, 1, 0)
		FROM
			[Parent] [r]
	) = 1

