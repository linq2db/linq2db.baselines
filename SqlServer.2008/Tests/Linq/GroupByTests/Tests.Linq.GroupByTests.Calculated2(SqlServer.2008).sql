BeforeExecute
-- SqlServer.2008

SELECT
	[p].[c1]
FROM
	(
		SELECT
			[ch].[Key_1] + N'2' as [c1]
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
					END as [Key_1]
				FROM
					[Child] [selectParam]
			) [ch]
		GROUP BY
			[ch].[Key_1]
	) [p]
WHERE
	[p].[c1] = N'22'

