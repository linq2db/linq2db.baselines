﻿BeforeExecute
-- SqlServer.2014

WITH [cte]
(
	[ID],
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
AS
(
	SELECT
		[person_1].[PersonID],
		[person_1].[FirstName],
		[person_1].[LastName],
		[person_1].[MiddleName],
		[person_1].[Gender]
	FROM
		[Person] [person_1]
)
SELECT
	[t1].[FirstName],
	[t1].[ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[cte] [t1]

BeforeExecute
-- SqlServer.2014

SELECT
	[person_1].[FirstName],
	[person_1].[PersonID],
	[person_1].[LastName],
	[person_1].[MiddleName],
	[person_1].[Gender]
FROM
	[Person] [person_1]

