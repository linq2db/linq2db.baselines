﻿BeforeExecute
--  SqlServer.2016

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (ForceSeek, Index(IX_ChildIndex))

