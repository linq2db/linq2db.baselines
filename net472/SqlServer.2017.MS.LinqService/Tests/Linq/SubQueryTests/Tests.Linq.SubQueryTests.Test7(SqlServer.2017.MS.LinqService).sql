﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	(
		SELECT
			Count(*)
		FROM
			[GrandChild] [g_1]
		WHERE
			[g_1].[ChildID] = [c_1].[ChildID]
	)
FROM
	[Child] [c_1]

