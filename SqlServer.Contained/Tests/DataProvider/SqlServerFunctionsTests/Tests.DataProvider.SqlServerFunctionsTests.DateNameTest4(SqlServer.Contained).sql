﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @p Time
SET     @p = TIMEFROMPARTS(2, 0, 0, 0, 7)

SELECT
	DATENAME(Hour, @p)

