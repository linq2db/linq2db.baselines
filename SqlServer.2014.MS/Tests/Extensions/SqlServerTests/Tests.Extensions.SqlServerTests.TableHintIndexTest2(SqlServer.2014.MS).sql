﻿BeforeExecute
--  SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (Index(IX_ChildIndex))

