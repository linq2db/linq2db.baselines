﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Now DateTimeOffset
SET     @Now = '2022-04-12 11:36:25.2153094 +00:00'
DECLARE @p_1 DateTimeOffset
SET     @p_1 = '2023-04-12 11:36:25.2153174 +00:00'

SELECT
	DATEDIFF(Month, @Now, @p_1)

