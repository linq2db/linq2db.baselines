﻿BeforeExecute
--  SqlServer.2005

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (Index(IX_ChildIndex), NoLock)

