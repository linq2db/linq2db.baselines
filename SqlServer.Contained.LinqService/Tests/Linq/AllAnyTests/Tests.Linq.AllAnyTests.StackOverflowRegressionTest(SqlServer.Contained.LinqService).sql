﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Person] [t1]
	), 1, 0)

