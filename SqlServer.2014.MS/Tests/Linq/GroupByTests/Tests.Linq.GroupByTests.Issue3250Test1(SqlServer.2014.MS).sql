﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	(CAST(COUNT(*) AS VarChar(11)) + N' items have not been processed, e.g. #' + CAST(MIN([g_1].[PersonID]) AS VarChar(11))) + N'.'
FROM
	[Person] [g_1]
WHERE
	[g_1].[LastName] <> N'ERROR' AND COUNT(*) > 0

