BeforeExecute
-- SqlServer.2005

SELECT
	[t2].[ParentID],
	[t2].[Value1]
FROM
	[Parent] [t2]
		LEFT JOIN (
			SELECT TOP (1)
				CASE
					WHEN [r].[Value1] IS NOT NULL THEN 1
					ELSE 0
				END as [HasValue]
			FROM
				[Parent] [r]
		) [t1] ON 1=1
WHERE
	[t1].[HasValue] = 1

