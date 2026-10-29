-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT FIRST @take
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT FIRST @n
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT SKIP @skip FIRST @take
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT SKIP @n
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1

SELECT SKIP @skip FIRST 1
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
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT SKIP @n FIRST 1
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
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1

SELECT SKIP @skip FIRST 1
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
DECLARE @skip Integer(4) -- Int32
SET     @skip = 2

SELECT SKIP @skip
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT FIRST @take
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

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
DECLARE @n Integer(4) -- Int32
SET     @n = 2

SELECT FIRST @n
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 2
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT SKIP @skip FIRST @take
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @n Integer(4) -- Int32
SET     @n = 2

SELECT SKIP @n
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 2

SELECT SKIP @skip FIRST 1
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
DECLARE @n Integer(4) -- Int32
SET     @n = 2

SELECT SKIP @n FIRST 1
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
DECLARE @skip Integer(4) -- Int32
SET     @skip = 2

SELECT SKIP @skip FIRST 1
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
DECLARE @skip Integer(4) -- Int32
SET     @skip = 3

SELECT SKIP @skip
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

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
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT FIRST @take
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @n Integer(4) -- Int32
SET     @n = 3

SELECT FIRST @n
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 3
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT SKIP @skip FIRST @take
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @n Integer(4) -- Int32
SET     @n = 3

SELECT SKIP @n
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 3

SELECT SKIP @skip FIRST 1
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
DECLARE @n Integer(4) -- Int32
SET     @n = 3

SELECT SKIP @n FIRST 1
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
DECLARE @skip Integer(4) -- Int32
SET     @skip = 3

SELECT SKIP @skip FIRST 1
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
DECLARE @skip Integer(4) -- Int32
SET     @skip = 4

SELECT SKIP @skip
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT FIRST @take
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

