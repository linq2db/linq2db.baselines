﻿BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @p_1 Time
SET     @p_1 = '02:00:00'

SELECT
	DATEADD(Hour, 1, @p_1)

