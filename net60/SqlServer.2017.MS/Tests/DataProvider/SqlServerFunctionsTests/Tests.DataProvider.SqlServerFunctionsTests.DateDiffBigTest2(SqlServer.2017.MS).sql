﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @Today DateTime2
SET     @Today = '2022-04-12T00:00:00.0000000'
DECLARE @p_1 DateTime2
SET     @p_1 = '2023-04-12T00:00:00.0000000'

SELECT
	DATEDIFF_BIG(Month, @Today, @p_1)

