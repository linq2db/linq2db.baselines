﻿BeforeExecute
--  SqlServer.2016.MS SqlServer.2016
DECLARE @varInt Int -- Int32
SET     @varInt = 3

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
		INNER JOIN [GrandChild] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
WHERE
	[p].[ParentID] > @varInt

