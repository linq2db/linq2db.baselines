BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @personId Integer(4) -- Int32
SET     @personId = 1
DECLARE @personId_1 Integer(4) -- Int32
SET     @personId_1 = 1

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender,
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID = @personId AND p.PersonID = @personId_1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @personId Integer(4) -- Int32
SET     @personId = 1
DECLARE @personId_1 Integer(4) -- Int32
SET     @personId_1 = 2

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender,
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID = @personId AND p.PersonID = @personId_1

