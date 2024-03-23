BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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

