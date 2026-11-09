-- Informix.DB2 Informix
DECLARE @p Char(1) -- StringFixedLength
SET     @p = 'F'

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	CASE
		WHEN p.PersonID > 2 THEN 'M'
		ELSE 'F'
	END = @p

-- Informix.DB2 Informix
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

