﻿BeforeExecute
BeginTransaction
BeforeExecute
--  SqlServer.2008
DECLARE @v1 Int -- Int32
SET     @v1 = 1

UPDATE
	[Parent]
SET
	[Value1] = @v1
WHERE
	[Parent].[Value1] = @v1

