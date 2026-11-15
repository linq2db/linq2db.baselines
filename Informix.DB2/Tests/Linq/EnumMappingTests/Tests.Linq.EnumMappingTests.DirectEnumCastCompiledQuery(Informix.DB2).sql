-- Informix.DB2 Informix
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'F'

SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.Gender = @Gender
ORDER BY
	p.PersonID

-- Informix.DB2 Informix
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.Gender = @Gender
ORDER BY
	p.PersonID

