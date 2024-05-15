BeforeExecute
-- SqlServer.2014

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
WHERE
	(
		SELECT TOP (1)
			IIF([r].[GuidValue] IS NOT NULL, 1, 0)
		FROM
			[LinqDataTypes] [r]
	) = 1

