﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p Time
SET     @p = TIMEFROMPARTS(2, 0, 0, 0, 7)

SELECT
	DATEADD(Hour, 1, @p)

