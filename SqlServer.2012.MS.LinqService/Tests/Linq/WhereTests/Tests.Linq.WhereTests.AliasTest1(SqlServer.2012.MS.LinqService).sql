﻿BeforeExecute
--  SqlServer.2012.MS SqlServer.2012
DECLARE @user Int -- Int32
SET     @user = 3

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @user

