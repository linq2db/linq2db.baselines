﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @value Int -- Int32
SET     @value = 0
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	@value,
	IIF(1 = 1, @p, 2)

