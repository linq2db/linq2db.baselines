-- Informix.DB2 Informix
DECLARE @gender Integer(4) -- Int32
SET     @gender = 1

SELECT
	p.PersonID,
	@gender::Int
FROM
	Person p

-- Informix.DB2 Informix
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

