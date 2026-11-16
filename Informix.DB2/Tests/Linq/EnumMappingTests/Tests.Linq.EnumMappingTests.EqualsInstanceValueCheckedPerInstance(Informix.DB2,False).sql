-- Informix.DB2 Informix
DECLARE @Value Char(1) -- StringFixedLength
SET     @Value = 'F'

SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.Gender = @Value

-- Informix.DB2 Informix
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

