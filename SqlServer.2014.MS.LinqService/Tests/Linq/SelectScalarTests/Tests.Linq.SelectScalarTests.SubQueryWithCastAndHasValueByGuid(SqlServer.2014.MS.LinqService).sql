BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[_].[ParentID],
	[_].[Value1]
FROM
	[Parent] [_]
WHERE
	(
		SELECT TOP (1)
			IIF([r].[GuidValue] IS NOT NULL, 1, 0)
		FROM
			[LinqDataTypes] [r]
	) = 1

