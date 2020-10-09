BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	person_1.PersonID
FROM
	Person person_1
WHERE
	ROWNUM <= :take

