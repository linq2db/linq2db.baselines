﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	BINARY_CHECKSUM([p].[PersonID], [p].[FirstName])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

