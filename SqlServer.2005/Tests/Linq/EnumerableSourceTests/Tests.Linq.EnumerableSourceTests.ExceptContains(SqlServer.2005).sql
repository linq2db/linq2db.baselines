﻿BeforeExecute
--  SqlServer.2005

SELECT
	CASE
		WHEN [r].[PersonID] IN (1, 2, 3) THEN 1
		ELSE 0
	END
FROM
	[Person] [r]

