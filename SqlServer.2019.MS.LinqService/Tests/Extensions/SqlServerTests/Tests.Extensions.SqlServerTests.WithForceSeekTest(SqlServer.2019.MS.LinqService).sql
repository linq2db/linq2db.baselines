﻿BeforeExecute
--  SqlServer.2019.MS SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (ForceSeek)

