-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 0
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS FETCH NEXT @p ROWS ONLY 

-- SqlServer.2014
DECLARE @count Int -- Int32
SET     @count = 0

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @count Int -- Int32
SET     @count = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @count ROWS

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 0

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
OFFSET @Count ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
SELECT TOP (0)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 0 ROWS

-- SqlServer.2014
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
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
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
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
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 2

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 2
DECLARE @p Int -- Int32
SET     @p = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS FETCH NEXT @p ROWS ONLY 

-- SqlServer.2014
DECLARE @count Int -- Int32
SET     @count = 2

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @count Int -- Int32
SET     @count = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @count ROWS

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 2

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
OFFSET @Count ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
SELECT TOP (2)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 2 ROWS

-- SqlServer.2014
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 2 ROWS FETCH NEXT 3 ROWS ONLY 

-- SqlServer.2014
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

-- SqlServer.2014
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

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 0
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS FETCH NEXT @p ROWS ONLY 

-- SqlServer.2014
DECLARE @count Int -- Int32
SET     @count = 0

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @count Int -- Int32
SET     @count = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @count ROWS

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 0

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
OFFSET @Count ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
SELECT TOP (0)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 0 ROWS

-- SqlServer.2014
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
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
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
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
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 1

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 1
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS FETCH NEXT @p ROWS ONLY 

-- SqlServer.2014
DECLARE @count Int -- Int32
SET     @count = 1

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @count Int -- Int32
SET     @count = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @count ROWS

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 1

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
OFFSET @Count ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
SELECT TOP (1)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 1 ROWS

-- SqlServer.2014
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 

-- SqlServer.2014
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

-- SqlServer.2014
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

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 3

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 3
DECLARE @p Int -- Int32
SET     @p = 4

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS FETCH NEXT @p ROWS ONLY 

-- SqlServer.2014
DECLARE @count Int -- Int32
SET     @count = 3

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @count Int -- Int32
SET     @count = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @count ROWS

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 3

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
OFFSET @Count ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
SELECT TOP (3)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 3 ROWS

-- SqlServer.2014
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 3 ROWS FETCH NEXT 4 ROWS ONLY 

-- SqlServer.2014
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

-- SqlServer.2014
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

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 0
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS FETCH NEXT @p ROWS ONLY 

-- SqlServer.2014
DECLARE @count Int -- Int32
SET     @count = 0

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
DECLARE @count Int -- Int32
SET     @count = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @count ROWS

-- SqlServer.2014
DECLARE @Count Int -- Int32
SET     @Count = 0

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
OFFSET @Count ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
SELECT TOP (0)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2014
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 0 ROWS

-- SqlServer.2014
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
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
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2014
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
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY 

