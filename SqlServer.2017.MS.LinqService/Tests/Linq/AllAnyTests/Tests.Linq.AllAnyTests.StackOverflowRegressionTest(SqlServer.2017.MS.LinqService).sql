﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	IIF( EXISTS (
		SELECT
			*
		FROM
			[Person] [t1]
	), 1, 0)

