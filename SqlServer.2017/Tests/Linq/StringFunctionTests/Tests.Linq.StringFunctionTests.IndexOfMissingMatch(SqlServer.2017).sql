-- SqlServer.2017
SELECT
	CharIndex(N'x', [p].[FirstName]) - 1
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2017
SELECT
	CharIndex(N'x', [p].[FirstName]) - 1
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2017
DECLARE @c NChar(1) -- StringFixedLength
SET     @c = N'o'

SELECT
	CharIndex(@c, [p].[FirstName]) - 1
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2017
DECLARE @c NChar(1) -- StringFixedLength
SET     @c = N'o'

SELECT
	CharIndex(@c, [p].[FirstName], 2) - 1
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

