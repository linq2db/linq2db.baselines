﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @gender Char(1) -- AnsiStringFixedLength
SET     @gender = N'O'

SELECT
	[x].[PersonID],
	[x].[Diagnosis]
FROM
	[Patient] [x]
		INNER JOIN [Person] [x1] ON [x].[PersonID] = [x1].[PersonID]
WHERE
	[x1].[Gender] = @gender

