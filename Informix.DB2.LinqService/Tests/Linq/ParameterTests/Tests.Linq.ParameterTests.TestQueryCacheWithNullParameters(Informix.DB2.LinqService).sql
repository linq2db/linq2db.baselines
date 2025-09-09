BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	Person t1
WHERE
	1 = 0

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	Person t1
WHERE
	t1.PersonID = @id

