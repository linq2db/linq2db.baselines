﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	(CAST(COUNT(*) AS VarChar(11)) + N' items have not been processed, e.g. #' + CAST(MIN([s].[PersonID]) AS VarChar(11))) + N'.'
FROM
	[Person] [s]
WHERE
	[s].[LastName] <> N'ERROR' AND COUNT(*) > 0

