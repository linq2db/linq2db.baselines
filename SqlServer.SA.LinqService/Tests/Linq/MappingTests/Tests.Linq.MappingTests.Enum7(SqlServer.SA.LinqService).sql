﻿BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @v1 Int -- Int32
SET     @v1 = 1
DECLARE @v1_1 Int -- Int32
SET     @v1_1 = 1

UPDATE
	[Parent]
SET
	[Value1] = @v1
WHERE
	[Parent].[Value1] = @v1_1

