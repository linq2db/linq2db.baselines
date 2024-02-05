BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.FirstName
FROM
	Person t1
GROUP BY
	t1.FirstName

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	keyParam.FirstName,
	keyParam.PersonID,
	keyParam.LastName,
	keyParam.MiddleName,
	keyParam.Gender
FROM
	Person keyParam
WHERE
	keyParam.FirstName = 'Tester'

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	keyParam.FirstName,
	keyParam.PersonID,
	keyParam.LastName,
	keyParam.MiddleName,
	keyParam.Gender
FROM
	Person keyParam
WHERE
	keyParam.FirstName = 'John'

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	keyParam.FirstName,
	keyParam.PersonID,
	keyParam.LastName,
	keyParam.MiddleName,
	keyParam.Gender
FROM
	Person keyParam
WHERE
	keyParam.FirstName = 'Jane'

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	keyParam.FirstName,
	keyParam.PersonID,
	keyParam.LastName,
	keyParam.MiddleName,
	keyParam.Gender
FROM
	Person keyParam
WHERE
	keyParam.FirstName = 'Jürgen'

