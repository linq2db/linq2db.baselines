﻿BeforeExecute
--  SqlCe
DECLARE @p NVarChar(1) -- String
SET     @p = '1'

SELECT
	[r].[FirstName],
	[r].[PersonID] as [ID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] = @p

BeforeExecute
--  SqlCe

SELECT
	[r].[FirstName],
	[r].[PersonID] as [ID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	1 = 0

BeforeExecute
--  SqlCe
DECLARE @p NVarChar(1) -- String
SET     @p = '1'

SELECT
	[r].[FirstName],
	[r].[PersonID] as [ID],
	[r].[LastName],
	[r].[MiddleName],
	[r].[Gender]
FROM
	[Person] [r]
WHERE
	[r].[FirstName] = @p

