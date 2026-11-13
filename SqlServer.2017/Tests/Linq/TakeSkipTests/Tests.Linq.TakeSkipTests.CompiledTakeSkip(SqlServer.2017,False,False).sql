-- SqlServer.2017
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

-- SqlServer.2017
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

-- SqlServer.2017
SELECT TOP (2)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 

-- SqlServer.2017
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

-- SqlServer.2017
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

-- SqlServer.2017
SELECT TOP (2)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 0

SELECT TOP (@p)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @p ROWS

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 0
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @p ROWS FETCH NEXT @p_1 ROWS ONLY 

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 0

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
OFFSET @p ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 2

SELECT TOP (@p)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @p ROWS

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 2
DECLARE @p_1 Int -- Int32
SET     @p_1 = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @p ROWS FETCH NEXT @p_1 ROWS ONLY 

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 2

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
OFFSET @p ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 0

SELECT TOP (@p)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @p ROWS

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 0
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @p ROWS FETCH NEXT @p_1 ROWS ONLY 

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 0

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
OFFSET @p ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 1

SELECT TOP (@p)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @p ROWS

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p_1 Int -- Int32
SET     @p_1 = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @p ROWS FETCH NEXT @p_1 ROWS ONLY 

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 1

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
OFFSET @p ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 3

SELECT TOP (@p)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @p ROWS

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 3
DECLARE @p_1 Int -- Int32
SET     @p_1 = 4

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @p ROWS FETCH NEXT @p_1 ROWS ONLY 

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 3

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
OFFSET @p ROWS FETCH NEXT 1 ROWS ONLY 

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 0

SELECT TOP (@p)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @p ROWS

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 0
DECLARE @p_1 Int -- Int32
SET     @p_1 = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @p ROWS FETCH NEXT @p_1 ROWS ONLY 

-- SqlServer.2017
DECLARE @p Int -- Int32
SET     @p = 0

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
OFFSET @p ROWS FETCH NEXT 1 ROWS ONLY 

