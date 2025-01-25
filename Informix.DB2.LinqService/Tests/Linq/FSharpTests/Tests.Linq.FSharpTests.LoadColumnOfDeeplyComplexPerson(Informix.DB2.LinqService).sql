BeforeExecute
-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT FIRST 2
	p.LastName
FROM
	Person p
WHERE
	p.PersonID = @p

