-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @count Int -- Int32
SET     @count = 0

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @count Int -- Int32
SET     @count = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @count ROWS

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @take Int -- Int32
SET     @take = 0

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 0

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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 0

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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Count Int -- Int32
SET     @Count = 2

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Count Int -- Int32
SET     @Count = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @count Int -- Int32
SET     @count = 2

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @count Int -- Int32
SET     @count = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @count ROWS

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 2
DECLARE @take Int -- Int32
SET     @take = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @count Int -- Int32
SET     @count = 0

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @count Int -- Int32
SET     @count = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @count ROWS

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @take Int -- Int32
SET     @take = 0

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 0

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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 0

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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Count Int -- Int32
SET     @Count = 1

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Count Int -- Int32
SET     @Count = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @count Int -- Int32
SET     @count = 1

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @count Int -- Int32
SET     @count = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @count ROWS

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Count Int -- Int32
SET     @Count = 3

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Count Int -- Int32
SET     @Count = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @count Int -- Int32
SET     @count = 3

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @count Int -- Int32
SET     @count = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @count ROWS

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 3
DECLARE @take Int -- Int32
SET     @take = 4

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT TOP (@Count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Count Int -- Int32
SET     @Count = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @Count ROWS

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @count Int -- Int32
SET     @count = 0

SELECT TOP (@count)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @count Int -- Int32
SET     @count = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @count ROWS

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @take Int -- Int32
SET     @take = 0

SELECT TOP (@take)
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 0

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 0

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

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @skip Int -- Int32
SET     @skip = 0

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

