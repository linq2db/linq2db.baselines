BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @gender_1 Char(1) -- AnsiStringFixedLength
SET     @gender_1 = 'M'

SELECT 
	p.FirstName, 
	p.PersonID, 
	p.LastName, 
	p.MiddleName, 
	p.Gender
FROM
	Person p
WHERE
	p.Gender = :gender_1

