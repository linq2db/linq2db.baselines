-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 1

SELECT
	c_1.FirstName as FirstName,
	c_1.PersonID as ID,
	c_1.LastName as LastName,
	c_1.MiddleName as MiddleName,
	c_1.Gender as Gender
FROM
	Person c_1
WHERE
	c_1.PersonID = $ID AND (c_1.MiddleName IS NULL OR Unicode::ToLower(Unicode::Strip(c_1.MiddleName)) = ''u)

