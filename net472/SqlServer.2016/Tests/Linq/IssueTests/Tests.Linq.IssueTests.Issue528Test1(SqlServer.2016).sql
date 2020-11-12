BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[PersonID],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

SELECT
	[t1].[FirstName]
FROM
	[Person] [t1]
GROUP BY
	[t1].[FirstName]

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'Jane'

SELECT
	[keyParam].[FirstName],
	[keyParam].[PersonID],
	[keyParam].[LastName],
	[keyParam].[MiddleName],
	[keyParam].[Gender]
FROM
	[Person] [keyParam]
WHERE
	[keyParam].[FirstName] = @FirstName

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'John'

SELECT
	[keyParam].[FirstName],
	[keyParam].[PersonID],
	[keyParam].[LastName],
	[keyParam].[MiddleName],
	[keyParam].[Gender]
FROM
	[Person] [keyParam]
WHERE
	[keyParam].[FirstName] = @FirstName

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'Jürgen'

SELECT
	[keyParam].[FirstName],
	[keyParam].[PersonID],
	[keyParam].[LastName],
	[keyParam].[MiddleName],
	[keyParam].[Gender]
FROM
	[Person] [keyParam]
WHERE
	[keyParam].[FirstName] = @FirstName

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'Tester'

SELECT
	[keyParam].[FirstName],
	[keyParam].[PersonID],
	[keyParam].[LastName],
	[keyParam].[MiddleName],
	[keyParam].[Gender]
FROM
	[Person] [keyParam]
WHERE
	[keyParam].[FirstName] = @FirstName

