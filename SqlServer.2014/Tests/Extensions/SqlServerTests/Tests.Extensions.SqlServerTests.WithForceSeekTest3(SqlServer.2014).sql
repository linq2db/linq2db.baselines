﻿BeforeExecute
--  SqlServer.2014

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (ForceSeek, Index(IX_ChildIndex))

