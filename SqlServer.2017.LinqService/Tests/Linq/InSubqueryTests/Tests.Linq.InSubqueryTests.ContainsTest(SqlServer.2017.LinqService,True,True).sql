﻿BeforeExecute
-- SqlServer.2017

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			1 = [c_1].[ParentID]
	), 1, 0)

