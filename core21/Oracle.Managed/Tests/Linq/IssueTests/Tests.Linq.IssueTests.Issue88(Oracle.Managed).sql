BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID = 1 AND t1.Gender = 'M'

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID = 1 AND 'M' = t1.Gender

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @gender_1 Char -- StringFixedLength
SET     @gender_1 = 'M'

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID = 1 AND t1.Gender = :gender_1

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @gender_1 Char -- StringFixedLength
SET     @gender_1 = 'M'

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
WHERE
	t1.PersonID = 1 AND :gender_1 = t1.Gender

