BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName VarChar(1) -- String
SET     @FirstName = '1'

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	r.FirstName = @FirstName

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	1 = 0

BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName VarChar(1) -- String
SET     @FirstName = '1'

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	r.FirstName = @FirstName

