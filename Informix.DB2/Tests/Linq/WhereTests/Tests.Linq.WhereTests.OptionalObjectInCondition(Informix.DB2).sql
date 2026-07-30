-- Informix.DB2 Informix
DECLARE @Id VarChar(1) -- String
SET     @Id = '1'

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	r.FirstName = @Id

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
DECLARE @Id VarChar(1) -- String
SET     @Id = '1'

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	r.FirstName = @Id

