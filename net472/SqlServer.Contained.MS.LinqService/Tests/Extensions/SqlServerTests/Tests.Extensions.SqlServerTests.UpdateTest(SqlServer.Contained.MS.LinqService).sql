﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

UPDATE
	[Child]
SET
	[Child].[ChildID] = [c_1].[ChildID] * 2
FROM
	[Child] [c_1] WITH (NoLock)
WHERE
	[c_1].[ParentID] < -1111
OPTION (RECOMPILE, FAST 10)

