BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[_].[ParentID],
	[_].[Value1]
FROM
	[Parent] [_]
WHERE
	(
		SELECT TOP (1)
			[r].[Value1]
		FROM
			[Parent] [r]
	) IS NOT NULL

