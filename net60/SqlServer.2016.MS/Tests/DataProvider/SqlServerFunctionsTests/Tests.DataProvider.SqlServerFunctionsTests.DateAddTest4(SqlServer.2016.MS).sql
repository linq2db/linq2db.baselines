﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @p_1 Time
SET     @p_1 = '02:00:00'

SELECT
	DATEADD(Hour, 1, @p_1)

