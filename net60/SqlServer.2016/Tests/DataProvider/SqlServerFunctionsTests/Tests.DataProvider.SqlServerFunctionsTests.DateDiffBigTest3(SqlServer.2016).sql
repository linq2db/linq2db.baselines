﻿BeforeExecute
-- SqlServer.2016
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-13 15:27:56.5896076 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-13 15:27:56.5896153 +00:00'

SELECT
	DATEDIFF_BIG(Month, @Now, @p_1)

