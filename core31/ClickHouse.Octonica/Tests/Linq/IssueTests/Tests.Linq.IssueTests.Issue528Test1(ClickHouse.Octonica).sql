BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.FirstName
FROM
	Person t1
GROUP BY
	t1.FirstName

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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

