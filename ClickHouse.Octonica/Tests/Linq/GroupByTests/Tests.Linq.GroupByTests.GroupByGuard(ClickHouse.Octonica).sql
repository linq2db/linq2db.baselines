BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Gender,
	Count(*)
FROM
	Person t1
GROUP BY
	t1.Gender

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Gender
FROM
	Person t1
GROUP BY
	t1.Gender

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
	keyParam.Gender = 'F'

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
	keyParam.Gender = 'M'

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
GROUP BY
	t1.PersonID,
	t1.FirstName,
	t1.LastName,
	t1.MiddleName,
	t1.Gender

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
	keyParam.PersonID = toInt32(2)

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
	keyParam.PersonID = toInt32(3)

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
	keyParam.PersonID = toInt32(4)

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
	keyParam.PersonID = toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
GROUP BY
	t1.PersonID,
	t1.FirstName,
	t1.LastName,
	t1.MiddleName,
	t1.Gender

