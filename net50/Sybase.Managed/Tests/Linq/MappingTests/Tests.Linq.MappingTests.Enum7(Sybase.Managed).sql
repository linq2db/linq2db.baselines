﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Sybase.Managed Sybase
DECLARE @v1 Integer -- Int32
SET     @v1 = 1

UPDATE
	[Parent]
SET
	[t1].[Value1] = @v1
FROM
	[Parent] [t1]
WHERE
	[t1].[Value1] = @v1

