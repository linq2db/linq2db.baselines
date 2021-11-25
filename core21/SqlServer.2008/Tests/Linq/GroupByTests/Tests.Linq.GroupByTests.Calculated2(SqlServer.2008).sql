BeforeExecute
-- SqlServer.2008

SELECT
	[p].[c1]
FROM
	(
		SELECT
			CASE
				WHEN [selectParam].[ParentID] > 2
					THEN CASE
					WHEN [selectParam].[ParentID] > 3
						THEN N'1'
					ELSE N'2'
				END
				ELSE N'3'
			END + N'2' as [c1]
		FROM
			[Child] [selectParam]
		GROUP BY
			CASE
				WHEN [selectParam].[ParentID] > 2
					THEN CASE
					WHEN [selectParam].[ParentID] > 3
						THEN N'1'
					ELSE N'2'
				END
				ELSE N'3'
			END
	) [p]
WHERE
	[p].[c1] = N'22'

