-- SqlServer.2005

SELECT
	[p].[Key_1] + N'2'
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
	) [p]
WHERE
	[p].[Key_1] + N'2' = N'22'

