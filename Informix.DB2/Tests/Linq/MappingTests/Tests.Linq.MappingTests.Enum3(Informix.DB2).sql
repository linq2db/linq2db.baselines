-- Informix.DB2 Informix
DECLARE @fm Char(1) -- StringFixedLength
SET     @fm = 'F'

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.Gender <> @fm

