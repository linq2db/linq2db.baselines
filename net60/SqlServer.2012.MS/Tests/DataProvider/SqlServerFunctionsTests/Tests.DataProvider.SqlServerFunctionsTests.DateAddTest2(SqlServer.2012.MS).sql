﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Today DateTime2
SET     @Today = '2022-04-14T00:00:00.0000000'

SELECT
	DATEADD(Day, 1, @Today)

