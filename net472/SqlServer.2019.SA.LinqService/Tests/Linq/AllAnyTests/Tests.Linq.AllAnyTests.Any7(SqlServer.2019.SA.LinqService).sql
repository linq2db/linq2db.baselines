﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [t1]
	), 1, 0)

