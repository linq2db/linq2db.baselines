BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	p.PersonID,
	p.Gender,
	p.FirstName,
	p.MiddleName,
	p.LastName
FROM
	Person p
WHERE
	p.PersonID = :ID
FETCH NEXT :take ROWS ONLY

