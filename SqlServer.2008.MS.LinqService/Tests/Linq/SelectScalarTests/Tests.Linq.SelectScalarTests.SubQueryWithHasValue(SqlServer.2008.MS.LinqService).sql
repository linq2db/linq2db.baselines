BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[_].[ParentID],
	[_].[Value1]
FROM
	[Parent] [_]
WHERE
	(
		SELECT TOP (1)
			CASE
				WHEN [r].[Value1] IS NOT NULL
					THEN 1
				ELSE 0
			END
		FROM
			[Parent] [r]
	) = 1

