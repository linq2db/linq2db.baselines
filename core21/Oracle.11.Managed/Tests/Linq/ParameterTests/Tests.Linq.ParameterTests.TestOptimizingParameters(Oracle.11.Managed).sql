BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id Int32
SET     @id = 1
DECLARE @id_1 Int32
SET     @id_1 = 1
DECLARE @id_2 Int32
SET     @id_2 = 1

SELECT
	Count(*)
FROM
	Person t1
WHERE
	((t1.PersonID = :id OR t1.PersonID <= :id_1) OR t1.PersonID = :id_2)

