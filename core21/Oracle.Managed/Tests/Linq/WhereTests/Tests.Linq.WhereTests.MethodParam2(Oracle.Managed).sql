BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ID_1 Int32
SET     @ID_1 = 1

SELECT 
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID = :ID_1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ID_1 Int32
SET     @ID_1 = 2

SELECT 
	p.PersonID
FROM
	Person p
WHERE
	p.PersonID = :ID_1

