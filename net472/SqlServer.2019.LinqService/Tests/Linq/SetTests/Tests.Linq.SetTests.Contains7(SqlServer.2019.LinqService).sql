﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = 11
	), 1, 0)

