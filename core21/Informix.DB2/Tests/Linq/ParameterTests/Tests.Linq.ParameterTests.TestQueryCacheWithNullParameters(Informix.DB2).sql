BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Count(*)
FROM
	Person t1
WHERE
	t1.PersonID IS NULL

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT 
	Count(*)
FROM
	Person t1
WHERE
	t1.PersonID = @id

