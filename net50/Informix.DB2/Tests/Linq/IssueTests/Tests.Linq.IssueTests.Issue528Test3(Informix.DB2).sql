BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.FirstName
FROM
	Person t1
GROUP BY
	t1.FirstName

BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName_1 VarChar(4) -- String
SET     @FirstName_1 = 'John'

SELECT
	keyParam.FirstName,
	keyParam.PersonID,
	keyParam.LastName,
	keyParam.MiddleName,
	keyParam.Gender
FROM
	Person keyParam
WHERE
	keyParam.FirstName = @FirstName_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName_1 VarChar(6) -- String
SET     @FirstName_1 = 'Tester'

SELECT
	keyParam.FirstName,
	keyParam.PersonID,
	keyParam.LastName,
	keyParam.MiddleName,
	keyParam.Gender
FROM
	Person keyParam
WHERE
	keyParam.FirstName = @FirstName_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName_1 VarChar(4) -- String
SET     @FirstName_1 = 'Jane'

SELECT
	keyParam.FirstName,
	keyParam.PersonID,
	keyParam.LastName,
	keyParam.MiddleName,
	keyParam.Gender
FROM
	Person keyParam
WHERE
	keyParam.FirstName = @FirstName_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName_1 VarChar(6) -- String
SET     @FirstName_1 = 'Jürgen'

SELECT
	keyParam.FirstName,
	keyParam.PersonID,
	keyParam.LastName,
	keyParam.MiddleName,
	keyParam.Gender
FROM
	Person keyParam
WHERE
	keyParam.FirstName = @FirstName_1

