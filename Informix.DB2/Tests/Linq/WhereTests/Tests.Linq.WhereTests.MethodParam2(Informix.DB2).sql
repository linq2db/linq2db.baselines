-- Informix.DB2 Informix
DECLARE @t Integer(4) -- Int32
SET     @t = 1

SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID = @t

-- Informix.DB2 Informix
DECLARE @t Integer(4) -- Int32
SET     @t = 2

SELECT
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID = @t

