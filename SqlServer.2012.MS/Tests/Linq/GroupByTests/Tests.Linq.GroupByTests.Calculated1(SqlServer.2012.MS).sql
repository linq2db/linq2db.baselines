﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[m_1].[Key_1],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t2].[Key_1]
		FROM
			(
				SELECT
					[t1].[Key_1]
				FROM
					(
						SELECT
							IIF([g_1].[ParentID] > 2, IIF([g_1].[ParentID] > 3, N'1', N'2'), N'3') as [Key_1]
						FROM
							[Child] [g_1]
					) [t1]
				GROUP BY
					[t1].[Key_1]
			) [t2]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[Key_1] = IIF([d].[ParentID] > 2, IIF([d].[ParentID] > 3, N'1', N'2'), N'3')

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			IIF([g_1].[ParentID] > 2, IIF([g_1].[ParentID] > 3, N'1', N'2'), N'3') as [Key_1]
		FROM
			[Child] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

