BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
WHERE
	(
		SELECT TOP (1)
			[r].[GuidValue]
		FROM
			[LinqDataTypes] [r]
	) IS NOT NULL

