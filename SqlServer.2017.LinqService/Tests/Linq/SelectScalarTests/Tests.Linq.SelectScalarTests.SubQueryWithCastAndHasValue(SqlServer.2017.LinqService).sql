BeforeExecute
-- SqlServer.2017

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

