﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
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

