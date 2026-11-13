-- Informix.DB2 Informix
DECLARE @gender Char(1) -- StringFixedLength
SET     @gender = 'F'

SELECT
	p.PersonID,
	p.Gender
FROM
	Person p
WHERE
	p.Gender = @gender

-- Informix.DB2 Informix
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

