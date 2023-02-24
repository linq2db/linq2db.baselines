﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND [_].[Gender] = N'M'

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND N'M' = [_].[Gender]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @gender NChar(1) -- StringFixedLength
SET     @gender = N'M'

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND [_].[Gender] = @gender

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @gender NChar(1) -- StringFixedLength
SET     @gender = N'M'

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = 1 AND @gender = [_].[Gender]

