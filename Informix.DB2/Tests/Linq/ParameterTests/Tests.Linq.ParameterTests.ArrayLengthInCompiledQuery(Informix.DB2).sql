-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT FIRST 2
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID = @p

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT FIRST 2
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID = @p

