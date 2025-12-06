-- Informix.DB2 Informix

SELECT FIRST 1
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName IS NULL

-- Informix.DB2 Informix
DECLARE @p VarChar(4) -- String
SET     @p = 'John'

SELECT FIRST 1
	p.FirstName
FROM
	Person p
WHERE
	p.FirstName = @p

