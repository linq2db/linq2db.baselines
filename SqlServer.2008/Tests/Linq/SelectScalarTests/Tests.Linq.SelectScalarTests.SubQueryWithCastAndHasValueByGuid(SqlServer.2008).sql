BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
WHERE
	(
		SELECT TOP (1)
			CASE
				WHEN [r].[GuidValue] IS NOT NULL THEN 1
				ELSE 0
			END
		FROM
			[LinqDataTypes] [r]
	) = 1

