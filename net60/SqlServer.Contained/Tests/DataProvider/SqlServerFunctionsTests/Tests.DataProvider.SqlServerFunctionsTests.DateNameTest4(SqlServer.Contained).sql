﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @p_1 Time
SET     @p_1 = '02:00:00'

SELECT
	DATENAME(Hour, @p_1)

