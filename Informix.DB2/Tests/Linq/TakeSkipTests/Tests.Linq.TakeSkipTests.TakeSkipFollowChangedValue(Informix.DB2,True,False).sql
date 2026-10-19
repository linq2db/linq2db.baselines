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
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT FIRST @take
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

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
DECLARE @skip Integer(4) -- Int32
SET     @skip = 2
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take
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
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT FIRST @take
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1

SELECT SKIP @skip
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT SKIP @skip FIRST @take
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
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT FIRST @take
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

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
DECLARE @skip Integer(4) -- Int32
SET     @skip = 3
DECLARE @take Integer(4) -- Int32
SET     @take = 4

SELECT SKIP @skip FIRST @take
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
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT FIRST @take
	p.PersonID
FROM
	Person p
ORDER BY
	p.PersonID

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
DECLARE @skip Integer(4) -- Int32
SET     @skip = 2
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take
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

