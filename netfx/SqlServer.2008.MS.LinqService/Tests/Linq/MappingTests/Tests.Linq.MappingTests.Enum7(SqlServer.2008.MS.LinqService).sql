﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @v1 Int -- Int32
SET     @v1 = 1

UPDATE
	[t1]
SET
	[t1].[Value1] = @v1
FROM
	[Parent] [t1]
WHERE
	[t1].[Value1] = @v1

