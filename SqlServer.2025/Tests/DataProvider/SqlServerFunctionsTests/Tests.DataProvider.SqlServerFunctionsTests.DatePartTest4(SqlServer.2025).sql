﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @p Time
SET     @p = TIMEFROMPARTS(2, 0, 0, 0, 7)

SELECT
	DATEPART(Hour, @p)

