﻿BeforeExecute
--  SqlServer.2016.MS SqlServer.2016
DECLARE @gender Char(1) -- AnsiStringFixedLength
SET     @gender = N'O'

SELECT
	[x].[PersonID],
	[x].[Diagnosis]
FROM
	[Patient] [x]
		INNER JOIN [Person] [y] ON [x].[PersonID] = [y].[PersonID]
WHERE
	[y].[Gender] = @gender

