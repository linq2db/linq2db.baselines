﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p Time
SET     @p = TIMEFROMPARTS(2, 0, 0, 0, 7)

SELECT
	DATEADD(Hour, 1, @p)

