BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT SKIP @skip FIRST @take
	r.PersonID,
	r.LastName,
	r.FirstName
FROM
	Person r
ORDER BY
	r.FirstName

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

