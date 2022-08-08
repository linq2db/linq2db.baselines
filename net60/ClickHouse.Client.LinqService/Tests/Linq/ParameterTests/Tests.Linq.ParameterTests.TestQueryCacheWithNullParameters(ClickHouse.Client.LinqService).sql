BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person _
WHERE
	_.PersonID IS NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Person _
WHERE
	_.PersonID = toInt32(1)

