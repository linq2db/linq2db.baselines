﻿BeforeExecute
--  SqlServer.2022

SELECT
	[p].[ParentID],
	[p].[ChildID]
FROM
	[Child] [p] WITH (ForceSeek(IX_ChildIndex([ParentID])))

