﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @VBLocal_id Int -- Int32
SET     @VBLocal_id = 1

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @VBLocal_id

