BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1.FirstName
FROM
	Person t1
GROUP BY
	t1.FirstName

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FirstName Varchar2(4) -- String
SET     @FirstName = 'John'

SELECT
	keyParam.FirstName,
	keyParam.PersonID,
	keyParam.LastName,
	keyParam.MiddleName,
	keyParam.Gender
FROM
	Person keyParam
WHERE
	keyParam.FirstName = :FirstName

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FirstName Varchar2(6) -- String
SET     @FirstName = 'Tester'

SELECT
	keyParam.FirstName,
	keyParam.PersonID,
	keyParam.LastName,
	keyParam.MiddleName,
	keyParam.Gender
FROM
	Person keyParam
WHERE
	keyParam.FirstName = :FirstName

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FirstName Varchar2(4) -- String
SET     @FirstName = 'Jane'

SELECT
	keyParam.FirstName,
	keyParam.PersonID,
	keyParam.LastName,
	keyParam.MiddleName,
	keyParam.Gender
FROM
	Person keyParam
WHERE
	keyParam.FirstName = :FirstName

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @FirstName Varchar2(6) -- String
SET     @FirstName = 'Jürgen'

SELECT
	keyParam.FirstName,
	keyParam.PersonID,
	keyParam.LastName,
	keyParam.MiddleName,
	keyParam.Gender
FROM
	Person keyParam
WHERE
	keyParam.FirstName = :FirstName

