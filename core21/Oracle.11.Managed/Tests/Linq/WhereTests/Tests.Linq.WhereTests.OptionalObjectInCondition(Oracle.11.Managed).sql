BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FirstName_1 Varchar2(1) -- String
SET     @FirstName_1 = '1'

SELECT 
	r.FirstName, 
	r.PersonID, 
	r.LastName, 
	r.MiddleName, 
	r.Gender
FROM
	Person r
WHERE
	r.FirstName = :FirstName_1

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	r.FirstName, 
	r.PersonID, 
	r.LastName, 
	r.MiddleName, 
	r.Gender
FROM
	Person r
WHERE
	r.FirstName IS NULL

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FirstName_1 Varchar2(1) -- String
SET     @FirstName_1 = '1'

SELECT 
	r.FirstName, 
	r.PersonID, 
	r.LastName, 
	r.MiddleName, 
	r.Gender
FROM
	Person r
WHERE
	r.FirstName = :FirstName_1

