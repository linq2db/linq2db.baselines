﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	CASE WHEN EXISTS(
		SELECT
			*
		FROM
			[Child] [t1]
	) THEN 1 ELSE 0 END

