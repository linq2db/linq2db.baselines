﻿BeforeExecute
--  SqlServer.SA SqlServer.2019

SELECT
	MAX([id].[ChildID])
FROM
	[Child] [id]
GROUP BY
	[id].[ParentID]

