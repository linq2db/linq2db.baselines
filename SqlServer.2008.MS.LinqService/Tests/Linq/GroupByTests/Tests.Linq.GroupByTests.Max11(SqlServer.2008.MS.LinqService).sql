﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	Max(CASE
		WHEN [c_1].[ChildID] > 20 THEN 1
		ELSE 0
	END)
FROM
	[Child] [c_1]

