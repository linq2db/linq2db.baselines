﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	CASE WHEN EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] > 3
	) THEN 1 ELSE 0 END

