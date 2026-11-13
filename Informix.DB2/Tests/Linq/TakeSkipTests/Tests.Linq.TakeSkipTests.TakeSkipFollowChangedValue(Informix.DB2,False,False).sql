-- Informix.DB2 Informix
DECLARE @Count Integer(4) -- Int32
SET     @Count = 2

SELECT FIRST @Count
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @Count Integer(4) -- Int32
SET     @Count = 2

SELECT SKIP @Count
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @Count Integer(4) -- Int32
SET     @Count = 2
DECLARE @p Integer(4) -- Int32
SET     @p = 3

SELECT SKIP @Count FIRST @p
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @count Integer(4) -- Int32
SET     @count = 2

SELECT FIRST @count
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @count Integer(4) -- Int32
SET     @count = 2

SELECT SKIP @count
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @Count Integer(4) -- Int32
SET     @Count = 2

SELECT SKIP @Count FIRST 1
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID

-- Informix.DB2 Informix
SELECT FIRST 2
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT SKIP 2
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT SKIP 2 FIRST 3
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT SKIP 2 FIRST 1
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID

-- Informix.DB2 Informix
SELECT SKIP 2 FIRST 1
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID

-- Informix.DB2 Informix
DECLARE @Count Integer(4) -- Int32
SET     @Count = 1

SELECT FIRST @Count
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @Count Integer(4) -- Int32
SET     @Count = 1

SELECT SKIP @Count
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @Count Integer(4) -- Int32
SET     @Count = 1
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT SKIP @Count FIRST @p
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @count Integer(4) -- Int32
SET     @count = 1

SELECT FIRST @count
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @count Integer(4) -- Int32
SET     @count = 1

SELECT SKIP @count
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @Count Integer(4) -- Int32
SET     @Count = 1

SELECT SKIP @Count FIRST 1
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID

-- Informix.DB2 Informix
SELECT FIRST 1
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT SKIP 1
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT SKIP 1 FIRST 2
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT SKIP 1 FIRST 1
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID

-- Informix.DB2 Informix
SELECT SKIP 1 FIRST 1
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID

-- Informix.DB2 Informix
DECLARE @Count Integer(4) -- Int32
SET     @Count = 3

SELECT FIRST @Count
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @Count Integer(4) -- Int32
SET     @Count = 3

SELECT SKIP @Count
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @Count Integer(4) -- Int32
SET     @Count = 3
DECLARE @p Integer(4) -- Int32
SET     @p = 4

SELECT SKIP @Count FIRST @p
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @count Integer(4) -- Int32
SET     @count = 3

SELECT FIRST @count
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @count Integer(4) -- Int32
SET     @count = 3

SELECT SKIP @count
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @Count Integer(4) -- Int32
SET     @Count = 3

SELECT SKIP @Count FIRST 1
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID

-- Informix.DB2 Informix
SELECT FIRST 3
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT SKIP 3
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT SKIP 3 FIRST 4
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT SKIP 3 FIRST 1
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID

-- Informix.DB2 Informix
SELECT SKIP 3 FIRST 1
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID

-- Informix.DB2 Informix
DECLARE @Count Integer(4) -- Int32
SET     @Count = 2

SELECT FIRST @Count
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @Count Integer(4) -- Int32
SET     @Count = 2

SELECT SKIP @Count
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @Count Integer(4) -- Int32
SET     @Count = 2
DECLARE @p Integer(4) -- Int32
SET     @p = 3

SELECT SKIP @Count FIRST @p
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @count Integer(4) -- Int32
SET     @count = 2

SELECT FIRST @count
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @count Integer(4) -- Int32
SET     @count = 2

SELECT SKIP @count
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @Count Integer(4) -- Int32
SET     @Count = 2

SELECT SKIP @Count FIRST 1
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID

-- Informix.DB2 Informix
SELECT FIRST 2
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT SKIP 2
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT SKIP 2 FIRST 3
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT SKIP 2 FIRST 1
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID

-- Informix.DB2 Informix
SELECT SKIP 2 FIRST 1
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID

