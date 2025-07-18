﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[m_2].[ParentID],
	[m_2].[ChildID],
	[m_2].[c1] % 2,
	[m_2].[c1]
FROM
	(
		SELECT
			[m_1].[ChildID],
			ROW_NUMBER() OVER (ORDER BY [m_1].[ChildID] DESC) - 1 as [c1],
			[a_Parent].[ParentID]
		FROM
			[Child] [m_1]
				LEFT JOIN [Parent] [a_Parent] ON [m_1].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[a_Parent].[ParentID] IS NOT NULL AND [m_1].[ParentID] > 0
	) [m_2]
ORDER BY
	[m_2].[ChildID] DESC

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[m_2].[ParentID],
	[m_2].[ChildID],
	[m_2].[c1] % 2,
	[m_2].[c1]
FROM
	(
		SELECT
			[m_1].[ChildID],
			ROW_NUMBER() OVER (ORDER BY [m_1].[ChildID] DESC) - 1 as [c1],
			[a_Parent].[ParentID]
		FROM
			[Child] [m_1]
				LEFT JOIN [Parent] [a_Parent] ON [m_1].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[a_Parent].[ParentID] IS NOT NULL AND [m_1].[ParentID] > 0
	) [m_2]
ORDER BY
	[m_2].[ChildID] DESC

