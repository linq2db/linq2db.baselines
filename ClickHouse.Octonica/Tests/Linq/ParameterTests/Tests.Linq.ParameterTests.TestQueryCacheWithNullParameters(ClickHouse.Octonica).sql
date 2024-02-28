BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Person _
WHERE
	_.PersonID IS NULL

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Count(*)
FROM
	Person _
WHERE
	_.PersonID = toInt32(1)

