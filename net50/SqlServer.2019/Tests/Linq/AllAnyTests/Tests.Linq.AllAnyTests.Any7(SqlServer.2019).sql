﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [t1]
	), 1, 0)

