﻿BeforeExecute
--  SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 50

SELECT TOP (@take) PERCENT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

