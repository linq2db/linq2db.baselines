-- Informix.DB2 Informix
DECLARE @p VarChar(1) -- String
SET     @p = '1'

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	r.FirstName = @p

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

-- Informix.DB2 Informix
DECLARE @p VarChar(1) -- String
SET     @p = '1'

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	r.FirstName = @p

