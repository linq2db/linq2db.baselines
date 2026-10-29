-- SqlServer.2012.MS SqlServer.2012
SELECT TOP (1)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2012.MS SqlServer.2012
DECLARE @n Int -- Int32
SET     @n = 1

SELECT TOP (@n)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2012.MS SqlServer.2012
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @n ROWS

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]
OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2012.MS SqlServer.2012
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]
OFFSET @n ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]
OFFSET 1 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 2 ROWS

-- SqlServer.2012.MS SqlServer.2012
SELECT TOP (1)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2012.MS SqlServer.2012
SELECT TOP (2)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2012.MS SqlServer.2012
DECLARE @n Int -- Int32
SET     @n = 2

SELECT TOP (@n)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 2 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2012.MS SqlServer.2012
DECLARE @n Int -- Int32
SET     @n = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @n ROWS

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]
OFFSET 2 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2012.MS SqlServer.2012
DECLARE @n Int -- Int32
SET     @n = 2

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]
OFFSET @n ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]
OFFSET 2 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 3 ROWS

-- SqlServer.2012.MS SqlServer.2012
SELECT TOP (2)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2012.MS SqlServer.2012
SELECT TOP (3)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2012.MS SqlServer.2012
DECLARE @n Int -- Int32
SET     @n = 3

SELECT TOP (@n)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 3 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2012.MS SqlServer.2012
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @n ROWS

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]
OFFSET 3 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2012.MS SqlServer.2012
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]
OFFSET @n ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]
OFFSET 3 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2012.MS SqlServer.2012
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 4 ROWS

-- SqlServer.2012.MS SqlServer.2012
SELECT TOP (3)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2012.MS SqlServer.2012
SELECT TOP (1)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID]

