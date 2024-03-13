BeforeExecute
-- SqlServer.2005

SELECT
	[_].[ParentID],
	[_].[Value1]
FROM
	[Parent] [_]
		LEFT JOIN (
			SELECT TOP (1)
				CASE
					WHEN [r].[Value1] IS NOT NULL
						THEN 1
					ELSE 0
				END as [HasValue]
			FROM
				[Parent] [r]
		) [t1] ON 1=1
WHERE
	[t1].[HasValue] = 1

