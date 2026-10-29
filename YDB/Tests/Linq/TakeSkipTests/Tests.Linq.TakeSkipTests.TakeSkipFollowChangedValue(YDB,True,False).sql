-- YDB Ydb
DECLARE $Count Int32
SET     $Count = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $Count

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
DECLARE $Count Int32
SET     $Count = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $Count 

-- YDB Ydb
DECLARE $count Int32
SET     $count = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $count

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $Count Int32
SET     $Count = 0

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
LIMIT 1 OFFSET $Count 

-- YDB Ydb
DECLARE $take Int32
SET     $take = 0

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

-- YDB Ydb
DECLARE $take Int32
SET     $take = 1
DECLARE $skip Int32
SET     $skip = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $take OFFSET $skip 

-- YDB Ydb
DECLARE $skip Int32
SET     $skip = 0

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
DECLARE $skip Int32
SET     $skip = 0

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
DECLARE $Count Int32
SET     $Count = 2

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $Count

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
DECLARE $Count Int32
SET     $Count = 2

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $Count 

-- YDB Ydb
DECLARE $count Int32
SET     $count = 2

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $count

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $Count Int32
SET     $Count = 2

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
LIMIT 1 OFFSET $Count 

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

-- YDB Ydb
DECLARE $take Int32
SET     $take = 3
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
DECLARE $Count Int32
SET     $Count = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $Count

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
DECLARE $Count Int32
SET     $Count = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $Count 

-- YDB Ydb
DECLARE $count Int32
SET     $count = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $count

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $Count Int32
SET     $Count = 0

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
LIMIT 1 OFFSET $Count 

-- YDB Ydb
DECLARE $take Int32
SET     $take = 0

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

-- YDB Ydb
DECLARE $take Int32
SET     $take = 1
DECLARE $skip Int32
SET     $skip = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $take OFFSET $skip 

-- YDB Ydb
DECLARE $skip Int32
SET     $skip = 0

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
DECLARE $skip Int32
SET     $skip = 0

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
DECLARE $Count Int32
SET     $Count = 1

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $Count

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
DECLARE $Count Int32
SET     $Count = 1

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $Count 

-- YDB Ydb
DECLARE $count Int32
SET     $count = 1

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $count

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $Count Int32
SET     $Count = 1

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
LIMIT 1 OFFSET $Count 

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
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $take Int32
SET     $take = 2
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
DECLARE $Count Int32
SET     $Count = 3

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $Count

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
DECLARE $Count Int32
SET     $Count = 3

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $Count 

-- YDB Ydb
DECLARE $count Int32
SET     $count = 3

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $count

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $Count Int32
SET     $Count = 3

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
LIMIT 1 OFFSET $Count 

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
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $take Int32
SET     $take = 4
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
DECLARE $Count Int32
SET     $Count = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $Count

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
DECLARE $Count Int32
SET     $Count = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $p OFFSET $Count 

-- YDB Ydb
DECLARE $count Int32
SET     $count = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $count

-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- YDB Ydb
DECLARE $Count Int32
SET     $Count = 0

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
LIMIT 1 OFFSET $Count 

-- YDB Ydb
DECLARE $take Int32
SET     $take = 0

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

-- YDB Ydb
DECLARE $take Int32
SET     $take = 1
DECLARE $skip Int32
SET     $skip = 0

SELECT
	p.PersonID as PersonID
FROM
	Person p
ORDER BY
	p.PersonID
LIMIT $take OFFSET $skip 

-- YDB Ydb
DECLARE $skip Int32
SET     $skip = 0

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
DECLARE $skip Int32
SET     $skip = 0

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

