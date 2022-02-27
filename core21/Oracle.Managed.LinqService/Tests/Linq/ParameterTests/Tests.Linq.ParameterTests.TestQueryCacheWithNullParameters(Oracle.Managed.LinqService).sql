BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	Count(*)
FROM
	Person t1
WHERE
	t1.PersonID IS NULL

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	Person t1
WHERE
	t1.PersonID = :id

