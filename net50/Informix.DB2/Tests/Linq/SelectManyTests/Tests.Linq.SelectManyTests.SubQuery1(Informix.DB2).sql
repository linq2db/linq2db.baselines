BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT
	p1.PersonID,
	p.FirstName
FROM
	Person p1
		INNER JOIN Person p ON 1=1
WHERE
	p1.PersonID = p.PersonID AND p.PersonID = @id

