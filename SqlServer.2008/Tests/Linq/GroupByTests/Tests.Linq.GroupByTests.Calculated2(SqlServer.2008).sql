-- SqlServer.2008

SELECT
	[p].[c1]
FROM
	(
		SELECT
			[ch].[Key_1] + N'2' as [c1]
		FROM
			(
				SELECT DISTINCT
					CASE
						WHEN [g_1].[ParentID] > 2 THEN CASE
							WHEN [g_1].[ParentID] > 3 THEN N'1'
							ELSE N'2'
						END
						ELSE N'3'
					END as [Key_1]
				FROM
					[Child] [g_1]
			) [ch]
	) [p]
WHERE
	[p].[c1] = N'22'

