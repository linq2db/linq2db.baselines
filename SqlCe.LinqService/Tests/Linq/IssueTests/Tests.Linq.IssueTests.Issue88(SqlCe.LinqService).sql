﻿BeforeExecute
--  SqlCe

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = 1 AND [t1].[Gender] = 'M'

BeforeExecute
--  SqlCe

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = 1 AND 'M' = [t1].[Gender]

BeforeExecute
--  SqlCe
DECLARE @gender NVarChar -- String
SET     @gender = 'M'

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = 1 AND [t1].[Gender] = @gender

BeforeExecute
--  SqlCe
DECLARE @gender NVarChar -- String
SET     @gender = 'M'

SELECT
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = 1 AND @gender = [t1].[Gender]

