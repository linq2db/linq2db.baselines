-- Informix.DB2 Informix
SELECT
	CharIndex('x', p.FirstName) - 1
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

-- Informix.DB2 Informix
SELECT
	CharIndex('x', p.FirstName) - 1
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

-- Informix.DB2 Informix
DECLARE @c Char(1) -- StringFixedLength
SET     @c = 'o'

SELECT
	CharIndex(@c::NChar(1), p.FirstName) - 1
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

-- Informix.DB2 Informix
DECLARE @c Char(1) -- StringFixedLength
SET     @c = 'o'

SELECT
	CharIndex(@c::NChar(1), p.FirstName, 2) - 1
FROM
	Person p
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

