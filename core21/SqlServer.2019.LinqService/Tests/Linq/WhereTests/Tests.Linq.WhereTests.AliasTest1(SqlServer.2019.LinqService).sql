﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @user_1 Int -- Int32
SET     @user_1 = 3

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @user_1

