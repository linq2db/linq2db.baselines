﻿-- SqlServer.2019

SELECT
	1
FROM
	[Parents] [ua]
WHERE
	[ua].[ParentId] = 55377 AND EXISTS(
		SELECT
			*
		FROM
			[Parents] [t1]
	)



