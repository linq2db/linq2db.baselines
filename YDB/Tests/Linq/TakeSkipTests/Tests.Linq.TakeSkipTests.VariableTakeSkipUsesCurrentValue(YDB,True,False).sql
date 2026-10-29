-- YDB Ydb
DECLARE $take Int32
SET     $take = 1

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $take

-- YDB Ydb
DECLARE $n Int32
SET     $n = 1

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $n

-- YDB Ydb
DECLARE $take Int32
SET     $take = 1
DECLARE $skip Int32
SET     $skip = 1

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $take OFFSET $skip 

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $skip Int32
SET     $skip = 1

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
LIMIT 1 OFFSET $skip 

-- YDB Ydb
DECLARE $n Int32
SET     $n = 1

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
LIMIT 1 OFFSET $n 

-- YDB Ydb
DECLARE $skip Int32
SET     $skip = 1

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
LIMIT 1 OFFSET $skip 

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $take Int32
SET     $take = 1

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $take

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
DECLARE $n Int32
SET     $n = 2

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $n

-- YDB Ydb
DECLARE $take Int32
SET     $take = 1
DECLARE $skip Int32
SET     $skip = 2

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $take OFFSET $skip 

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $skip Int32
SET     $skip = 2

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
LIMIT 1 OFFSET $skip 

-- YDB Ydb
DECLARE $n Int32
SET     $n = 2

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
LIMIT 1 OFFSET $n 

-- YDB Ydb
DECLARE $skip Int32
SET     $skip = 2

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
LIMIT 1 OFFSET $skip 

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

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
DECLARE $take Int32
SET     $take = 3

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $take

-- YDB Ydb
DECLARE $n Int32
SET     $n = 3

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $n

-- YDB Ydb
DECLARE $take Int32
SET     $take = 1
DECLARE $skip Int32
SET     $skip = 3

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $take OFFSET $skip 

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $skip Int32
SET     $skip = 3

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
LIMIT 1 OFFSET $skip 

-- YDB Ydb
DECLARE $n Int32
SET     $n = 3

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
LIMIT 1 OFFSET $n 

-- YDB Ydb
DECLARE $skip Int32
SET     $skip = 3

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
LIMIT 1 OFFSET $skip 

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $take Int32
SET     $take = 3

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $take

