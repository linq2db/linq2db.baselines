BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	p.PersonID = toInt32(1) AND (position('123]456', ']') > toInt32(0))

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Person p
WHERE
	p.PersonID = toInt32(1) AND (position('123]456', ']') <= toInt32(0))

