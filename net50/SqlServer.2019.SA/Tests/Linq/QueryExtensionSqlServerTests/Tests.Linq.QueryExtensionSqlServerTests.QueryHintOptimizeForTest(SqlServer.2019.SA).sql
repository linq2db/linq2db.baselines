﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id
OPTION (OPTIMIZE FOR (@id=1))

