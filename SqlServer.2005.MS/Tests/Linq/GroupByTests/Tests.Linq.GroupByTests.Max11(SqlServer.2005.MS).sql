﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	MAX(CASE
		WHEN [t1].[ChildID] > 20 THEN 1
		ELSE 0
	END)
FROM
	[Child] [t1]

