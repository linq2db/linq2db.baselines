﻿BeforeExecute
-- SqlServer.2005
DECLARE @Today DateTime
SET     @Today = '2022-04-11T00:00:00'

SELECT
	DATEADD(Day, 1, @Today)

