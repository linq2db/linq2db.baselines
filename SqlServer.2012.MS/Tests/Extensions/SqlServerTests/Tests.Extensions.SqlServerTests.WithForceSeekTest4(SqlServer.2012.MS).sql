﻿BeforeExecute
--  SqlServer.2012.MS SqlServer.2012

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (ForceSeek(IX_ChildIndex([ParentID])))

