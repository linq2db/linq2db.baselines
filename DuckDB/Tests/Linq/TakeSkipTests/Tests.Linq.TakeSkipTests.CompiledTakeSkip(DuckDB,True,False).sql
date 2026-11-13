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

-- DuckDB
DECLARE $take  -- Int32
SET     $take = 2

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $take

-- DuckDB
SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT 2 OFFSET 1 

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

-- DuckDB
DECLARE $take  -- Int32
SET     $take = 2

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $take

-- DuckDB
SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT 2 OFFSET 1 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 0

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 0

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
OFFSET $p 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1
DECLARE $p_1  -- Int32
SET     $p_1 = 0

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $p_1 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 0

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
LIMIT 1 OFFSET $p 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 2

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 2

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
OFFSET $p 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 3
DECLARE $p_1  -- Int32
SET     $p_1 = 2

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $p_1 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 2

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
LIMIT 1 OFFSET $p 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 0

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 0

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
OFFSET $p 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1
DECLARE $p_1  -- Int32
SET     $p_1 = 0

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $p_1 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 0

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
LIMIT 1 OFFSET $p 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
OFFSET $p 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 2
DECLARE $p_1  -- Int32
SET     $p_1 = 1

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $p_1 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1

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
LIMIT 1 OFFSET $p 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 3

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 3

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
OFFSET $p 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 4
DECLARE $p_1  -- Int32
SET     $p_1 = 3

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $p_1 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 3

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
LIMIT 1 OFFSET $p 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 0

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 0

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
OFFSET $p 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 1
DECLARE $p_1  -- Int32
SET     $p_1 = 0

SELECT
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $p_1 

-- DuckDB
DECLARE $p  -- Int32
SET     $p = 0

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
LIMIT 1 OFFSET $p 

