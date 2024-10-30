BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[m_1].[Key_1],
	[d].[ParentID],
	[d].[ChildID]
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
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[Key_1] = CASE
			WHEN [d].[ParentID] > 2 THEN CASE
				WHEN [d].[ParentID] > 3 THEN N'1'
				ELSE N'2'
			END
			ELSE N'3'
		END

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			CASE
				WHEN [g_1].[ParentID] > 2 THEN CASE
					WHEN [g_1].[ParentID] > 3 THEN N'1'
					ELSE N'2'
				END
				ELSE N'3'
			END as [Key_1]
		FROM
			[Child] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

