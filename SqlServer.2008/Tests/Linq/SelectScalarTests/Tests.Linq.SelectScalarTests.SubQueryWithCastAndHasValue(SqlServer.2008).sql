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
				WHEN [r].[Value1] IS NOT NULL THEN 1
				ELSE 0
			END
		FROM
			[Parent] [r]
	) = 1

