﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @ID Int -- Int32
SET     @ID = 1

SELECT TOP (@take)
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @ID

