-- Informix.DB2 Informix
DECLARE @n Integer(4) -- Int32
SET     @n = 1

SELECT
	(p.PersonID + @n::Int) - 1,
	p.FirstName
FROM
	Person p
WHERE
	p.PersonID + @n::Int = 2

