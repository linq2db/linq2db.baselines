﻿BeforeExecute
-- SqlCe
DECLARE @v1 Int -- Int32
SET     @v1 = 1
DECLARE @v2 Int -- Int32
SET     @v2 = 1

UPDATE
	[Parent]
SET
	[Parent].[Value1] = @v1
WHERE
	[Parent].[Value1] = @v2

