﻿BeforeExecute
-- SqlServer.2012
DECLARE @p Time
SET     @p = TIMEFROMPARTS(2, 0, 0, 0, 7)

SELECT
	DATEPART(Hour, @p)

