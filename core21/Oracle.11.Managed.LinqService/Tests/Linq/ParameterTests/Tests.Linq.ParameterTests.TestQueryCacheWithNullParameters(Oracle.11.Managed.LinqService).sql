BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	Count(*)
FROM
	Person t1
WHERE
	t1.PersonID IS NULL

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 1

SELECT 
	Count(*)
FROM
	Person t1
WHERE
	t1.PersonID = :id

