-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1

-- YDB Ydb
DECLARE $take Int32
SET     $take = 2

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $take

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT 2 OFFSET 1 

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1

-- YDB Ydb
DECLARE $take Int32
SET     $take = 2

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $take

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT 2 OFFSET 1 

-- YDB Ydb
DECLARE $p Int32
SET     $p = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $p Int32
SET     $p = 1
DECLARE $p_1 Int32
SET     $p_1 = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $p_1 

-- YDB Ydb
DECLARE $p Int32
SET     $p = 0

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1 OFFSET $p 

-- YDB Ydb
DECLARE $p Int32
SET     $p = 2

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $p Int32
SET     $p = 3
DECLARE $p_1 Int32
SET     $p_1 = 2

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $p_1 

-- YDB Ydb
DECLARE $p Int32
SET     $p = 2

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1 OFFSET $p 

-- YDB Ydb
DECLARE $p Int32
SET     $p = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $p Int32
SET     $p = 1
DECLARE $p_1 Int32
SET     $p_1 = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $p_1 

-- YDB Ydb
DECLARE $p Int32
SET     $p = 0

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1 OFFSET $p 

-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $p Int32
SET     $p = 2
DECLARE $p_1 Int32
SET     $p_1 = 1

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $p_1 

-- YDB Ydb
DECLARE $p Int32
SET     $p = 1

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1 OFFSET $p 

-- YDB Ydb
DECLARE $p Int32
SET     $p = 3

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $p Int32
SET     $p = 4
DECLARE $p_1 Int32
SET     $p_1 = 3

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $p_1 

-- YDB Ydb
DECLARE $p Int32
SET     $p = 3

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1 OFFSET $p 

-- YDB Ydb
DECLARE $p Int32
SET     $p = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $p Int32
SET     $p = 1
DECLARE $p_1 Int32
SET     $p_1 = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $p_1 

-- YDB Ydb
DECLARE $p Int32
SET     $p = 0

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
ORDER BY
	t1.PersonID
LIMIT 1 OFFSET $p 

