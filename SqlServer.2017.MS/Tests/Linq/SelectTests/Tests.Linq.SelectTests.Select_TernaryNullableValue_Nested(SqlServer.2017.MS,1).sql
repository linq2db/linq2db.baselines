﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @value Int -- Int32
SET     @value = 1
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	@value,
	IIF(1 = 1, @p, 3)

