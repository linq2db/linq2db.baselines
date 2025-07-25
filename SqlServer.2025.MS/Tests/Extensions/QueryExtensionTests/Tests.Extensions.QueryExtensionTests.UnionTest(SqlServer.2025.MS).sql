﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t].[ParentID],
	[t].[ChildID]
FROM
	[Child] [t] WITH (ReadUncommitted)
UNION
SELECT
	[t_1].[ParentID],
	[t_1].[ChildID]
FROM
	[Child] [t_1] WITH (ReadUncommitted)
WHERE
	[t_1].[ChildID] < 10
OPTION (RECOMPILE)

