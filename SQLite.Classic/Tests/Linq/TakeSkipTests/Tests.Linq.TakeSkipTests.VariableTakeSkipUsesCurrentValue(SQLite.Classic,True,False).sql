-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
LIMIT @take

-- SQLite.Classic SQLite
DECLARE @n  -- Int32
SET     @n = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
LIMIT @n

-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
LIMIT @take OFFSET @skip

-- SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.Classic SQLite
DECLARE @skip  -- Int32
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
LIMIT 1 OFFSET @skip

-- SQLite.Classic SQLite
DECLARE @n  -- Int32
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
LIMIT 1 OFFSET @n

-- SQLite.Classic SQLite
DECLARE @skip  -- Int32
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
LIMIT 1 OFFSET @skip

-- SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
LIMIT @take

-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
LIMIT @take

-- SQLite.Classic SQLite
DECLARE @n  -- Int32
SET     @n = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
LIMIT @n

-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @skip  -- Int32
SET     @skip = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
LIMIT @take OFFSET @skip

-- SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.Classic SQLite
DECLARE @skip  -- Int32
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
LIMIT 1 OFFSET @skip

-- SQLite.Classic SQLite
DECLARE @n  -- Int32
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
LIMIT 1 OFFSET @n

-- SQLite.Classic SQLite
DECLARE @skip  -- Int32
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
LIMIT 1 OFFSET @skip

-- SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
LIMIT @take

-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
LIMIT @take

-- SQLite.Classic SQLite
DECLARE @n  -- Int32
SET     @n = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
LIMIT @n

-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1
DECLARE @skip  -- Int32
SET     @skip = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
LIMIT @take OFFSET @skip

-- SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.Classic SQLite
DECLARE @skip  -- Int32
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
LIMIT 1 OFFSET @skip

-- SQLite.Classic SQLite
DECLARE @n  -- Int32
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
LIMIT 1 OFFSET @n

-- SQLite.Classic SQLite
DECLARE @skip  -- Int32
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
LIMIT 1 OFFSET @skip

-- SQLite.Classic SQLite
SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]
LIMIT @take

