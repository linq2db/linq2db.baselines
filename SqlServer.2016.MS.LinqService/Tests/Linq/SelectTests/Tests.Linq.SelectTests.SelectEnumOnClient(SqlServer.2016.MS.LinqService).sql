﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[person_1].[PersonID]
FROM
	[Person] [person_1]

