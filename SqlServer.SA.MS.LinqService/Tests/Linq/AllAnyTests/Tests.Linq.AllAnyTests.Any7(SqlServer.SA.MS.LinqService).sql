﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Child] [t1]
	), 1, 0)

