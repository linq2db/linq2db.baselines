﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2022-02-22 00:00:00.0000000 +00:00'

SELECT
	DATEPART(Month, @p_1)

