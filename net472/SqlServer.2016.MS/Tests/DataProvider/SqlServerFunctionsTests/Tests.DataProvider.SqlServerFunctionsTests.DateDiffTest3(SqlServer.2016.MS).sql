﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-11 04:00:44.0317411 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-11 04:00:44.0317411 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

