﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 100

SELECT TOP (@take)
	[r].[PersonID],
	[r].[PersonID]
FROM
	[Person] [r]
GROUP BY
	[r].[PersonID],
	[r].[PersonID]
ORDER BY
	[r].[PersonID]

