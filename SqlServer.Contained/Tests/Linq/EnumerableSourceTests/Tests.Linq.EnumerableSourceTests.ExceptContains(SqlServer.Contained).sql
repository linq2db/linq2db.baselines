﻿BeforeExecute
--  SqlServer.Contained SqlServer.2019

SELECT
	IIF([r].[PersonID] IN (1, 2, 3), 1, 0)
FROM
	[Person] [r]

