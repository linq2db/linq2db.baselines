﻿BeforeExecute
--  SqlServer.2022.MS SqlServer.2022

SELECT
	[t2].[ParentID],
	[t2].[ChildID]
FROM
	(
		SELECT
			[t1].[ChildID],
			[t1].[ParentID]
		FROM
			[Child] [t1]
		ORDER BY
			[t1].[ChildID] DESC
		OFFSET 1 ROWS FETCH NEXT 7 ROWS ONLY 
	) [t2]
ORDER BY
	[t2].[ChildID]
OFFSET 2 ROWS

