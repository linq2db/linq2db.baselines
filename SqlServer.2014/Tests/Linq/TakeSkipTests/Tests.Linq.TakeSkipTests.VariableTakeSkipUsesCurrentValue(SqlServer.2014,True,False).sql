-- SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @n Int -- Int32
SET     @n = 1

SELECT TOP (@n)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

-- SqlServer.2014
DECLARE @n Int -- Int32
SET     @n = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @n ROWS

-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 1

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
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
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

-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 1

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
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS

-- SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @n Int -- Int32
SET     @n = 2

SELECT TOP (@n)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 2
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

-- SqlServer.2014
DECLARE @n Int -- Int32
SET     @n = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @n ROWS

-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 2

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
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
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

-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 2

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
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS

-- SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @n Int -- Int32
SET     @n = 3

SELECT TOP (@n)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 3
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

-- SqlServer.2014
DECLARE @n Int -- Int32
SET     @n = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @n ROWS

-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 3

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
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
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

-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 3

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
OFFSET @skip ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
DECLARE @skip Int -- Int32
SET     @skip = 4

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS

-- SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

