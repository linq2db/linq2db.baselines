-- Informix.DB2 Informix
SELECT FIRST 1
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
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT FIRST @take
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
SELECT FIRST 1
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
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT FIRST @take
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
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT FIRST @p
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT SKIP @p
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = 3

SELECT SKIP @p FIRST @p_1
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT SKIP @p FIRST 1
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
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT FIRST @p
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT SKIP @p
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 1
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = 2

SELECT SKIP @p FIRST @p_1
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT SKIP @p FIRST 1
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
DECLARE @p Integer(4) -- Int32
SET     @p = 3

SELECT FIRST @p
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 3

SELECT SKIP @p
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 3
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = 4

SELECT SKIP @p FIRST @p_1
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 3

SELECT SKIP @p FIRST 1
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
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT FIRST @p
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT SKIP @p
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = 3

SELECT SKIP @p FIRST @p_1
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT SKIP @p FIRST 1
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	t1.PersonID

