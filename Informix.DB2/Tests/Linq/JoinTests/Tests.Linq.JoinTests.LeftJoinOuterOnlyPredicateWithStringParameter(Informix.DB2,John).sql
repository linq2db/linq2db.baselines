-- Informix.DB2 Informix
DECLARE @name VarChar(4) -- String
SET     @name = 'John'

SELECT
	p.PersonID,
	d.Taxonomy
FROM
	Person p
		LEFT JOIN Doctor d ON d.PersonID = p.PersonID AND p.FirstName = @name

-- Informix.DB2 Informix
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

-- Informix.DB2 Informix
SELECT
	t1.PersonID,
	t1.Taxonomy
FROM
	Doctor t1

