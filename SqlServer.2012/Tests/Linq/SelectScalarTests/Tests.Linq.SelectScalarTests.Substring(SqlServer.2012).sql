﻿BeforeExecute
-- SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	Substring(N'123', 2, @p)

