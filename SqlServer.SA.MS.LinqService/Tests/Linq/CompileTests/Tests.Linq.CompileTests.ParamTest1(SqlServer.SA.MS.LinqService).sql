﻿BeforeExecute
--  SqlServer.SA.MS SqlServer.2019
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

