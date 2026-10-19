-- DuckDB
SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT 1

-- DuckDB
DECLARE $n  -- Int32
SET     $n = 1

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $n

-- DuckDB
SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT 1 OFFSET 1 

-- DuckDB
DECLARE $n  -- Int32
SET     $n = 1

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
OFFSET $n 

-- DuckDB
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1 OFFSET 1 

-- DuckDB
DECLARE $n  -- Int32
SET     $n = 1

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1 OFFSET $n 

-- DuckDB
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1 OFFSET 1 

-- DuckDB
SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
OFFSET 2 

-- DuckDB
SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT 1

-- DuckDB
SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT 2

-- DuckDB
DECLARE $n  -- Int32
SET     $n = 2

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $n

-- DuckDB
SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT 1 OFFSET 2 

-- DuckDB
DECLARE $n  -- Int32
SET     $n = 2

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
OFFSET $n 

-- DuckDB
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1 OFFSET 2 

-- DuckDB
DECLARE $n  -- Int32
SET     $n = 2

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1 OFFSET $n 

-- DuckDB
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1 OFFSET 2 

-- DuckDB
SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
OFFSET 3 

-- DuckDB
SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT 2

-- DuckDB
SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT 3

-- DuckDB
DECLARE $n  -- Int32
SET     $n = 3

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $n

-- DuckDB
SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT 1 OFFSET 3 

-- DuckDB
DECLARE $n  -- Int32
SET     $n = 3

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
OFFSET $n 

-- DuckDB
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1 OFFSET 3 

-- DuckDB
DECLARE $n  -- Int32
SET     $n = 3

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1 OFFSET $n 

-- DuckDB
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1 OFFSET 3 

-- DuckDB
SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
OFFSET 4 

-- DuckDB
SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT 3

-- DuckDB
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1

